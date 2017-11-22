package com.sbs.homework.entity;

public class User{


	private int id;

	private String password;

	private String phone;

	private String username;


	public User() {
	}
	
	public User(String username,String password,String phone){
		this.username = username;
		this.password = password;
		this.phone = phone;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}