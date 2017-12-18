package com.sbs.homework.utils;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.baidu.aip.imagecensor.AipImageCensor;


/**
 * 识别图片类
 * @Description: TODO  
 * @author kavstall  
 * @date 2017年12月6日
 */
public class Query extends HttpServlet{
	private static final String APP_ID="10344200";
	private static final String API_KEY="2MMHjAYjvGgzf1zt5eOGotHq";
	private static final String SECRET_KEY="bkLLZDB8sBTvUu3BnAGz2GpN1mT6MVGZ";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String path = req.getParameter("path");
		String filePath = req.getRealPath(path);
		JSONObject result = getRequest(filePath);
		
		resp.getWriter().print(result);
	}
	
	public static JSONObject getRequest(String path){
		//创建对象
		AipImageCensor clien = new AipImageCensor(APP_ID, API_KEY, SECRET_KEY);
		//解析色情值的
		JSONObject result =clien.antiTerror(path);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.append("result", result);
		return jsonObject;
	}
	
}
