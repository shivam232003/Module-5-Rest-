package com.constructor;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {

	public static void main(String[] args) {
		
		ApplicationContext con = new ClassPathXmlApplicationContext("com/constructor/config.xml");
		
		User u1 = (User)con.getBean("u1");
		System.out.println(u1);
		
		User u2 = (User) con.getBean("u2");
		System.out.println(u2);
	}

}
