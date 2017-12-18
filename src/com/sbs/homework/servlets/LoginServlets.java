package com.sbs.homework.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sbs.homework.dao.UserDao;
import com.sbs.homework.dao.impl.UserDaoImpl;
import com.sbs.homework.entity.User;
import com.sbs.homework.utils.Globle;
import com.sbs.homework.utils.MD5;

public class LoginServlets extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String username ="";
		String password ="";
		String error="";
		String code ="x";
		Globle globle = new Globle();
		//获取页面传递过来的验证码
		code = req.getParameter("code");
		String codes = globle.getCode().toLowerCase();
		if(!code.equals(codes)){
			error = "对不起，您的验证码有问题，请重新输入";
			req.setAttribute("error", error);
			req.getRequestDispatcher("login.jsp").forward(req, resp);
			return;
		}
		
		//获取页面传递过来的账号密码
		username = req.getParameter("username");
		//需要进行md5加密
		password = MD5.getMd5(req.getParameter("password"));
		UserDao userDao = new UserDaoImpl();
		User user = userDao.queryByUsername(username);
		if(user ==null){
			error = "对不起，您的账号不正确，请重新输入";
			req.setAttribute("error", error);
			req.getRequestDispatcher("login.jsp").forward(req, resp);
			return;
		}
		if(password.equals(user.getPassword())){
			//创建session对象
			HttpSession session = req.getSession();
			session.setAttribute("username", username);
			//设置session存在时间为20分钟
			session.setMaxInactiveInterval(20*60);
			resp.sendRedirect("home.jsp");
			return;
		}else{
			error = "对不起，您的密码不正确，请重新输入";
			req.setAttribute("error", error);
			req.getRequestDispatcher("login.jsp").forward(req, resp);
			return;
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
	
}
