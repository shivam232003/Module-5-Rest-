package com.setterinjection;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
	public static void main(String[] args) {
		
		ApplicationContext acon = new ClassPathXmlApplicationContext("com/setterinjection/config.xml");
		
		User u1 = (User) acon.getBean("u1");
		System.out.println(u1);
		
		User u2 = (User) acon.getBean("u2");
		System.out.println(u2);
		
		
	}
}
