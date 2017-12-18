package com.sbs.homework.servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownloadServlet extends HttpServlet {
	 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String filename = req.getParameter("filename");
		String path	= getServletContext().getRealPath("/WEB-INF/photo");
		
		File file = new File (path + "/" + filename);
		
		    resp.setContentType("application/x-msdownload");
		    resp.setHeader("Content-Disposition", "attachment;filename=\"" + filename + "\"");
		    
			InputStream In = new FileInputStream(file);
			ServletOutputStream sos = resp.getOutputStream();
			byte b[] = new byte[1024];
			int n;
			while((n = In.read(b))!= -1){
				sos.write(b,0,n);
			}
			sos.close();
			In.close();
			sos.flush();
		}
			
		
	

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 doGet(req,resp);
	}

}
