package com.sbs.homework.servlets;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



/**
 * 文件上传接收类
 * @Description: TODO  
 * @author kavstall  
 * @date 2017年12月5日
 */
public class Upload extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String filename = fileUpload(req, resp);
		resp.getWriter().print("upload/"+filename);
		
	}

	//接收上传文件
	public static String fileUpload(HttpServletRequest req, HttpServletResponse resp){
		String fileName="";
		//判断是否为文件上传类型的表单
		if(ServletFileUpload.isMultipartContent(req)){
			//创建文件上传工厂
			DiskFileItemFactory factory =new DiskFileItemFactory();
			//根据工厂，创建文件上传对象。
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				//获取upload对象的迭代器
				Iterator<FileItem> iterator = upload.parseRequest(req).iterator();
				while(iterator.hasNext()){
					//拿到上传文件对象
					FileItem item = iterator.next();
					//获取上传文件的名称
					fileName=item.getName();
					
					//定义保存路径
					String filePath = req.getRealPath("upload");
					File file =new File(filePath);
					if(file.exists()){
						file.mkdir();
					}
					File file2 =new File(filePath+"\\"+fileName);
					item.write(file2);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return fileName;
	}
}

