package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;

import model.Admin;

public class AdminDao {
	
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public Admin findAdminByEmail(String email,String password) {
		SessionFactory sf = new Configuration().configure("config.xml").buildSessionFactory();
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		
		String hql = "from Admin where email=:e and password=:p";
		Query<Admin> query = session.createQuery(hql);
		
		query.setParameter("e", email);
		query.setParameter("p", password);
		
		Admin a = query.uniqueResult();	
		
		
		tr.commit();
		session.close();
		sf.close();
		return a;
	}
}
