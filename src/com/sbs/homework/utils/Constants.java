package com.sbs.homework.utils;

import java.awt.Color;
import java.awt.Font;

public class Constants {

	// 验证码的字体库
	protected static Font[] codeFont = { new Font("Times New Roman", Font.PLAIN, 30),
			new Font("Times New Roman", Font.PLAIN, 30), new Font("Times New Roman", Font.PLAIN, 30),
			new Font("Times New Roman", Font.PLAIN, 30) };

	// 验证码数字颜色库
	protected static Color[] color = { Color.BLACK, Color.RED, Color.DARK_GRAY, Color.BLUE };

	// 验证码的字符库
	protected static final String IMAGE_CHAR = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

	// 验证码的宽度
	protected static final Integer IMAGE_WIDTH = 120;

	// 验证码的高度
	protected static final Integer IMAGE_HEIGHT = 40;

	public static Font getCodeFont(int i) {
		return codeFont[i];
	}

	public static Color getColor(int i) {
		return color[i];
	}

	public static String getImageChar() {
		return IMAGE_CHAR;
	}

	public static Integer getImageWidth() {
		return IMAGE_WIDTH;
	}

	public static Integer getImageHeight() {
		return IMAGE_HEIGHT;
	}
	
}
