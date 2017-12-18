package com.sbs.homework.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sbs.homework.dao.UserDao;
import com.sbs.homework.dao.impl.UserDaoImpl;
import com.sbs.homework.entity.Message;
import com.sbs.homework.entity.User;
import com.sbs.homework.utils.Globle;

public class ShowServlets extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8"); 
		//获取分页页数
		int pageCount = 1;
		Globle count = new Globle();
		pageCount = count.getpageCount();
		req.setAttribute("pageCount", pageCount);
		//获取跳转分页页面
		String ShowPage = req.getParameter("ShowPage");
		if(ShowPage==null || "".equals(ShowPage)){
			ShowPage = "1";
		}
		int showPage = Integer.parseInt(ShowPage);
		
		
		if(showPage > pageCount){
			showPage = pageCount;
		}
		if(showPage < 1){
			showPage = 1;
		}
		int showPage1 = (showPage-1)*3;
		int showPage2 = showPage1 + 2;
		req.setAttribute("showPage1", showPage1);
		req.setAttribute("showPage2", showPage2);
		req.setAttribute("showPage", showPage);
		
		
		
		String sql ="select * from message order by time desc";
		
		UserDao userDao = new UserDaoImpl();
		List<Message> list = userDao.queryByShow(sql);
		
		
		req.setAttribute("list", list);
        req.getRequestDispatcher("news.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
}
