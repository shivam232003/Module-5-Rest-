package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDao;
import com.model.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDao dao;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/home")
	public String home(Model m) {
		List<User> list = dao.getAllUser();
		m.addAttribute("list",list);
		return "home";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping(value = "/add",method = RequestMethod.POST)
	public String fatchData(@ModelAttribute User u,Model m) {
		System.out.println(u);
		dao.insertOrUpdate(u);
		System.out.println("User Added...");
		List<User> list = dao.getAllUser();
		m.addAttribute("list",list);
		return "home";
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable("id") int id, Model m) {
		User u = dao.getUserById(id);
		dao.deleteUser(u);
		System.out.println("Deleted...");
		List<User> list = dao.getAllUser();
		m.addAttribute("list",list);
		return "home";
	}
	
	@RequestMapping("/query/{id}")
	public ModelAndView showUser(@PathVariable("id") int id,Model m) {
		System.out.println(id);
		User u = dao.getUserById(id);
		System.out.println(u);
		ModelAndView m1 = new ModelAndView();
		m1.addObject("u", u);
		m1.setViewName("query");
		return m1;
	}
	
	@RequestMapping("/edit/{id}")
	public ModelAndView updateUser(@PathVariable("id") int id) {
		System.out.println(id);
		User u = dao.getUserById(id);
		dao.insertOrUpdate(u);
		System.out.println(u);
		ModelAndView m = new ModelAndView();
		m.addObject("u", u);
		m.setViewName("update");
		return m;
	}
	
}
