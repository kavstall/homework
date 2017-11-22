package com.sbs.homework.utils;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBUtils {
	private static DataSource dataSource =null;
	static {
		try {
			InitialContext context =new InitialContext();
			dataSource = (DataSource) context.lookup("java:/comp/env/jdbc/mydb");	
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @Description: 获取数据库连接
	 * @author kavstall  
	 * @date 2017年11月17日  
	 * @param @return
	 * @return Connection
	 * @throws
	 */
	public static Connection getConnection(){
		Connection con = null;
		try {
			con = dataSource.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
		
	}
}
