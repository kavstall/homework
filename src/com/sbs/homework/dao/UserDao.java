package com.sbs.homework.dao;

import java.util.List;

import com.sbs.homework.entity.Message;
import com.sbs.homework.entity.User;

public interface UserDao {
	//通过用户名查询用户信息
	User queryByUsername(String username);
	
	//注册用户信息。
	Boolean saveUser(String username, String password, String phone);
	
	//管理员登录验证
	Boolean checkAdministrationPassword(String username,String password);
	
	//管理员查询所有用户信息
	User[] queryAllUser();
	
	//重置密码
	Boolean resetPassword(String username);
	
	//留言板信息展示
	List<Message> queryByShow(String sql);
	
	//上传留言板留言内容
	User queryByMessage(String username, String time, String message);
	
}
