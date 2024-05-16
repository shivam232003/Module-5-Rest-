package com.springlist;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App {
	public static void main(String[] args) {

		ApplicationContext con = new ClassPathXmlApplicationContext("com/springlist/config.xml");

		List<Student> slist = (List<Student>) con.getBean("studentList");

		for (Student s : slist) {
			System.out.println("id : "+s.getId());
			System.out.println("fname : "+s.getFname());
			System.out.println("lname : "+s.getLname());
			System.out.println("email : "+s.getEmail());
			System.out.println("mobile : "+s.getMobile());
			System.out.println();
		}
	}
}
