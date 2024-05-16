package com.setterinjection;

public class User {
	
	private int id;
	private String name;
	private long contact;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(int id, String name, long contact) {
		super();
		System.out.println("Data set By Constructor");
		this.id = id;
		this.name = name;
		this.contact = contact;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		System.out.println("Data set By Id Set Method");
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		System.out.println("Data set By name Set Method");
		this.name = name;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		System.out.println("Data set By contact Set Method");
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", contact=" + contact + "]";
	}
	
	
}
