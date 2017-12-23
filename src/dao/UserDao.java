package edu.daffodil.ssb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
@Component("userDao")
public class UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session session() {
		
		return sessionFactory.getCurrentSession();
	}
	
	public void saveUser(User user){
		session().save(user);
	}
	
	public void updateUser(User user){
		session().update(user);
	}
	
	public void deleteUser(User userid) {
		session().delete(userid);
	}
	
	
	
	
	

}
