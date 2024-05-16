package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.model.User;

@Component
public class UserDao {
	
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void insertOrUpdate(User u) {
		this.hibernateTemplate.saveOrUpdate(u);
	}
	
	@Transactional
	public void deleteUser(User u) {
		this.hibernateTemplate.delete(u);
	}
	
	public User getUserById(int id) {
		return this.hibernateTemplate.get(User.class, id);
	}
	
	public List<User> getAllUser(){
		return this.hibernateTemplate.loadAll(User.class);
	}
}
