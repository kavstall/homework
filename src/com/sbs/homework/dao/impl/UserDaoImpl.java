package com.sbs.homework.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.sbs.homework.dao.UserDao;
import com.sbs.homework.entity.User;
import com.sbs.homework.utils.DBUtils;

public class UserDaoImpl implements UserDao{

	@Override
	public User queryByUsername(String username) {
		Connection con = null;
		User user = null;
		con = DBUtils.getConnection();
		String sql ="select * from user where username='"+username+"'";
		ResultSet rs =null;
		Statement st = null;
		try {
			st =con.createStatement();
			rs =st.executeQuery(sql);
			while(rs.next()){
				user =new User(rs.getString("username"),rs.getString("password"),rs.getString("phone"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				st.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return user;
	}

	@Override
	public Boolean saveUser(String username, String password, String phone) {
		Connection con = null;
		User user = null;
		Boolean result= false;
		con = DBUtils.getConnection();
		String sql = "insert into user values('0', '0','"+username+"', '"+password+"', '"+phone+"')";
		Statement st = null;
		
		try {
			st =con.createStatement();
			int temp=st.executeUpdate(sql);
			if(temp>0){
				result = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				st.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}
	
}
