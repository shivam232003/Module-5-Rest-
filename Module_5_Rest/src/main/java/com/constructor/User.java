package com.constructor;

public class User {
	
	private int id;
	private String name;
	private long contact;
	
	public User(int id, String name, long contact) {
		super();
		System.out.println("Value Set By Constuctor Injection");
		this.id = id;
		this.name = name;
		this.contact = contact;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", contact=" + contact + "]";
	}
	
	
	
}
