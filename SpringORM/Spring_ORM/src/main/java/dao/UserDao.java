package dao;

import java.util.List;

import org.hibernate.query.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.orm.hibernate5.HibernateTemplate;

import model.User;

public class UserDao {

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void addUser(User u) {
		this.hibernateTemplate.saveOrUpdate(u);
	}

	@Transactional
	public void deleteUser(User u) {
		this.hibernateTemplate.delete(u);
	}

	public User getUserById(int id) {
		return this.hibernateTemplate.get(User.class, id);
	}

	public User findUserByEmail(String email, String password) {
		SessionFactory sf = new Configuration().configure("config.xml").buildSessionFactory();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();

		String hql = "from User where email=:e and password=:p";
		Query<User> q = session.createQuery(hql);
		q.setParameter("e", email);
		q.setParameter("p", password);

		User u = (User) q.uniqueResult();

		tr.commit();
		session.close();
		sf.close();
		return u;
	}

	public List<User> getAllUser() {
		return this.hibernateTemplate.loadAll(User.class);
	}
	
}
