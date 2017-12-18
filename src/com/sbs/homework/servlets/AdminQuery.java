package com.sbs.homework.servlets;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sbs.homework.dao.UserDao;
import com.sbs.homework.dao.impl.UserDaoImpl;
import com.sbs.homework.entity.User;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
/**
 * 
 * @Description: 管理员查询用户信息 
 * @author kavstall  
 * @date 2017年12月2日
 */
public class AdminQuery extends HttpServlet {

	@SuppressWarnings("null")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		
		UserDao userDao = new UserDaoImpl();
		User[] users =null;
		if(username ==null || "".equals(username)){
			users = userDao.queryAllUser();
		}else{
			User user = userDao.queryByUsername(username);
			users = new User[2];
			users[0] = user;
		}
		//将二维数组转化成json格式
		int i=0;
		JSONArray jsonArray = new JSONArray();
		JSONObject jsonObject = null;
		while(users[i]!=null){
			jsonObject = new JSONObject().fromObject(users[i]);
			jsonArray.add(jsonObject);
			i++;
		}
		resp.getWriter().print(jsonArray);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
}
