package com.sbs.homework.dao;

import com.sbs.homework.utils.MD5;

public class test {

	public static void main(String[] args) {
		String password="";
		String md5 ="";
		md5 = MD5.getMd5(password);
		System.out.println(md5);
	
	}

}
