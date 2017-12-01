package com.sbs.homework.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sbs.homework.dao.UserDao;
import com.sbs.homework.dao.impl.UserDaoImpl;
import com.sbs.homework.utils.Globle;

public class RegisterServlets extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		//定义字符串接收用户账号，密码，手机号，验证码
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String phone=req.getParameter("phone");
		String code =req.getParameter("code");
		String error ="";
		String message="注册成功";
		//测试
		System.out.println(Globle.getSmsCode());
		
		if(username.equals(Globle.getSmsCode())){
			error="短信验证码错误，请重新获取";
			req.setAttribute("error", error);
			req.getRequestDispatcher("register.jsp").forward(req, resp);
			return;
		}
		UserDao userDao = new UserDaoImpl();
		Boolean result = userDao.saveUser(username, password, phone);
		if(result){
			req.setAttribute("message", message);
			req.getRequestDispatcher("register.jsp").forward(req, resp);
			return;
		}else{
			error="注册失败，请重新注册";
			req.setAttribute("error", error);
			req.getRequestDispatcher("register.jsp").forward(req, resp);
			return;
		}
	}
	
}
