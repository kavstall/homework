package com.sbs.homework.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sbs.homework.dao.UserDao;
import com.sbs.homework.dao.impl.UserDaoImpl;
import com.sbs.homework.utils.MD5;

public class AdministrationLoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//设置编码格式
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String username ="";
		String password ="";
		String error="";
		Boolean result= false;
		
		username = req.getParameter("username");
		//密码必须进行MD5加密，才能进行校验
		password = MD5.getMd5(req.getParameter("password"));
		
		UserDao userDao = new UserDaoImpl();
		
		//判断账号密码是否正确，如果正确返回true；
		result = userDao.checkAdministrationPassword(username, password);
		
		if(result){
			//设置session
			//创建session对象
			HttpSession session = req.getSession();
			session.setAttribute("username", username);
			//设置session存在时间为30秒
			session.setMaxInactiveInterval(30);
			resp.sendRedirect("administration.jsp");
		}else{
			error ="您输入的账号密码错误，请重新输入";
			req.setAttribute("error", error);
			req.getRequestDispatcher("administration_login.jsp").forward(req, resp);
		}
		
	}
	
}
