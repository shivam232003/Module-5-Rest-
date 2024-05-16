package com.object;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;



public class App {
	public static void main(String[] args) {
		
		ApplicationContext con = new ClassPathXmlApplicationContext("com/object/config.xml");
		
		Employee emp = (Employee) con.getBean("emp");
		System.out.println(emp);
		
		Address add = (Address) con.getBean("address");
		System.out.println(add);
	}
}
