package com.sbs.homework.servlets;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sbs.homework.utils.Constants;
import com.sbs.homework.utils.Globle;


public class VerificationCode extends HttpServlet {
	
	private static String codeNumbers="";
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//创建一张120*40大小的二进制图片对象,Constants类中封装了图片相关参数。
		BufferedImage image = new BufferedImage(Constants.getImageWidth(),
				Constants.getImageHeight(),BufferedImage.TYPE_INT_RGB);
		//获取图形绘制对象，并设置图片颜色
		Graphics graphics = image.getGraphics();
		graphics.setColor(getRandColor());
		
		//使用画笔，填充验证码的背景色
		graphics.fillRect(0, 0, Constants.getImageWidth(), Constants.getImageHeight());
		
		//产生4位随机数，并绘制在图片上
		for(int i=0;i<4;i++){
			drawCode(graphics, i);
		}
		//使用验证码
		Globle.setCode(codeNumbers);
		//使用完毕后，codeNumber需要清空
		codeNumbers="";
		
		// 利用ImageIO类的write方法对图像进行编码
		ServletOutputStream sos = resp.getOutputStream();
		ImageIO.write(image, "GIF", sos);
		sos.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	/**
	 * 
	 * @Description: 创建RGB随机颜色函数
	 * @author kavstall  
	 * @date 2017年11月19日  
	 * @param @return
	 * @return Color
	 * @throws
	 */
	private Color getRandColor(){
		Random random = new Random();
		int B = random.nextInt(255);
		int R = random.nextInt(255);
		int G = random.nextInt(255);
		Color color = new Color(R, G, B);
		return color;
	}
	/**
	 * 
	 * @Description: 创建随机字符函数
	 * @author kavstall  
	 * @date 2017年11月19日  
	 * @param @param graphics
	 * @param @param i
	 * @return void
	 * @throws
	 */
	private void drawCode(Graphics graphics ,int i){
		
		Random random = new Random();
		
		Integer j = random.nextInt(Constants.getImageChar().length());
		
		String number = Constants.getImageChar().substring(j, j+1);
		codeNumbers = codeNumbers+number;
		graphics.setFont(Constants.getCodeFont(i));
		graphics.setColor(Constants.getColor(i));
		graphics.drawString(number, 20+i*20, 30);
	}
}
