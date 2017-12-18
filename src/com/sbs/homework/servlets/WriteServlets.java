package com.sbs.homework.servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sbs.homework.dao.UserDao;
import com.sbs.homework.dao.impl.UserDaoImpl;
import com.sbs.homework.entity.User;

public class WriteServlets extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String username ="";
		String message ="";
		
		//获取当前系统时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		String time = sdf.format(date);
		
		username = req.getParameter("username");
		message = req.getParameter("message");
		UserDao userDao = new UserDaoImpl();
		User user = userDao.queryByMessage(username, time, message);
		
		resp.sendRedirect("show.jhtml");//重定向到news.jsp
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
}
