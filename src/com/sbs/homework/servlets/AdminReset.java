package com.sbs.homework.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sbs.homework.dao.UserDao;
import com.sbs.homework.dao.impl.UserDaoImpl;

public class AdminReset extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String username = req.getParameter("reset");
		UserDao userDao = new UserDaoImpl();
		if(userDao.resetPassword(username)){
			resp.getWriter().print("密码重置成功，初始密码为8888");
		}else{
			resp.getWriter().print("密码重置失败，请输入正确用户名");
		}
	}
	
}
