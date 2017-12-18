package com.sbs.homework.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 
 * @Description: 用于md5加密
 * @author kavstall  
 * @date 2017年12月1日
 */
public class MD5 {
	
	/**
	 * 
	 * @Description: 对密码进行加密
	 * @author kavstall  
	 * @date 2017年12月1日  
	 * @param @param password
	 * @param @return
	 * @return String
	 * @throws
	 */
	public static String getMd5(String password){
		
		String md5 ="";
		StringBuilder result = new StringBuilder();
		try {
			//MessageDigest.getInstance("MD5")获取MD5的实例
			MessageDigest digest = MessageDigest.getInstance("MD5");
			//获得需要加密的字符数组
			byte[] bytes = digest.digest(password.getBytes());
			for(byte b : bytes){
				//把字节转化为16进制
				String hex = Integer.toHexString(b&0xff);
				if(hex.length()==1){
					result.append("0"+hex);
				}else{
					result.append(hex);
				}
			}
			
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		md5=result.toString();
		return md5;
	}
	
	
}
