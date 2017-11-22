package com.sbs.homework.dao;

import com.sbs.homework.entity.User;

public interface UserDao {
	//通过用户名查询用户信息
	User queryByUsername(String username);
}
