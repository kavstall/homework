package com.sbs.homework.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import com.sbs.homework.dao.UserDao;
import com.sbs.homework.entity.Message;
import com.sbs.homework.entity.User;
import com.sbs.homework.utils.DBUtils;
import com.sbs.homework.utils.Globle;
import com.sbs.homework.utils.MD5;

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

	/**
	 * 检验管理员登录密码是否正确
	 */
	public Boolean checkAdministrationPassword(String username, String password) {
		Connection con = null;
		String sql = "select * from user where identity=1";
		con = DBUtils.getConnection();
		ResultSet rs =null;
		Statement st = null;
		try {
			st =con.createStatement();
			rs =st.executeQuery(sql);
			while(rs.next()){
				if(username.equals(rs.getString("username")) && 
						password.equals(rs.getString("password"))){
					return true;
				}
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
		
		return false;
	}

	//管理员查询所有用户信息
	public User[] queryAllUser() {
		User[] users = new User[100];
		User user =null;
		Connection con = null;
		String sql = "select * from user where identity=0";
		ResultSet rs =null;
		Statement st = null;
		
		con = DBUtils.getConnection();
		try {
			st =con.createStatement();
			rs =st.executeQuery(sql);
			int i =0;
			while(rs.next()){
				rs.getString("username");
				user =new User(rs.getString("username"),rs.getString("password"),rs.getString("phone"));
				users[i] =user;
				i++;
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
		
		return users;
	}

	/**
	 * 根据用户名重置密码
	 */
	public Boolean resetPassword(String username) {
		Connection con = null;
		con = DBUtils.getConnection();
		Boolean result = false;
		Statement st = null;
		String password =MD5.getMd5("8888");
		String sql ="UPDATE user set password ='"+password+"'where username='"+username+"'";
		try {
			st =con.createStatement();
			if(st.executeUpdate(sql)==1){
				result =true;
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
	
	@Override
	public User queryByMessage(String username, String time, String message) {
		Connection con = null;
		User user = null;
		con = DBUtils.getConnection();
		
		String sql ="insert into message values('0', '"+username+"', '"+time+"', '"+message+"')";
		Statement st = null;
		try {
			st = con.createStatement();//连接数据库
			//con.commit();
			int ret = st.executeUpdate(sql);//执行sql语句
			if(ret > 0){
				JOptionPane.showMessageDialog(null, "提示框", "留言发布成功！", JOptionPane.INFORMATION_MESSAGE);
			} else {
				JOptionPane.showMessageDialog(null, "提示框", "留言发布失败！请先登录！", JOptionPane.INFORMATION_MESSAGE);
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

		return user;
	}

	@Override
	public List<Message> queryByShow(String sql){
	
		int pageSize=3;
		
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		con = DBUtils.getConnection();
		
		List<Message> list = new ArrayList<Message>();
		try {
			st =con.createStatement();
			//返回可滚动的结果集
			rs =st.executeQuery(sql);
			//将游标移到最后一行 
			rs.last();
			//获取最后一行的行号
			int totalCount=rs.getRow();
			
			//计算分页后的总数 
			int pageCount=(totalCount%pageSize==0)?(totalCount/pageSize):(totalCount/pageSize+1);
			
			Globle count = new Globle();
			count.setpageCount(pageCount);
			/*
			 *
			//获取用户想要显示的页数：
			String integer=req.getParameter("showPage");
			
			if(integer==null){
				integer="1";
			}
			
			try{showPage=Integer.parseInt(integer);
			}catch(NumberFormatException e){
				showPage=1;
			}
			
			if(showPage<=1){
				showPage=1;
			}
			if(showPage>=pageCount){
				showPage=pageCount;
			}
			*/
			
			
			//将游标移到第一行 
			rs.first();
			
			for(int i=0;i<totalCount;i++){
				Message msg = new Message();
				msg.setUsername(rs.getString("username"));
				msg.setTime((rs.getString("time")).substring(0,19));
				msg.setMessage(rs.getString("message"));
				list.add(msg);
				rs.next();
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
		
		return list;
		
		
	}
	
}
