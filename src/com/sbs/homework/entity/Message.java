package com.sbs.homework.entity;

import java.util.List;

public class Message{

	private int uid;

	private String username;
	
	private String time;
	
	private String message;

	public Message() {
	}

	public int getUid() {
		return this.uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public Message(String username, String time, String message){
		this.username = username;
		this.time = time;
		this.message = message;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
}