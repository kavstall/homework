package com.sbs.homework.utils;

public class Globle {
	
	// 存放验证码字符
	private static String code;
	
	//存放短信验证码
	private static String smsCode;

	public static String getCode() {
		return code;
	}

	public static void setCode(String code) {
		Globle.code = code;
	}

	public static String getSmsCode() {
		return smsCode;
	}

	public static void setSmsCode(String smsCode) {
		Globle.smsCode = smsCode;
	}
	// 获取分页页数
	private static int pageCount;
		
	public static int getpageCount() {
		return pageCount;
	}

	public static void setpageCount(int pageCount) {
		Globle.pageCount = pageCount;
	}
}