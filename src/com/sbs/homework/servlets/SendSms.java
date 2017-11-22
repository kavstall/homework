package com.sbs.homework.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sbs.homework.utils.GetMessageCode;


public class SendSms extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//获取到页面传递过来的手机号
		String phone = req.getParameter("phone");
		//根据获取到的手机号发送验证码，后台获取验证码
		String code = GetMessageCode.getCode(phone);
		//判断验证码是否发送成功
		if(code == "验证码发送失败"){
			System.out.println("验证码发送失败");
		}else{
			//把验证码返回到前端
			System.out.println(code);
			resp.getWriter().print(code);
		}
	}
}
