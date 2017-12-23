package edu.daffodil.ssb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
@Component("countryDao")
public class CountryDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session session(){
		return sessionFactory.getCurrentSession();
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Country> showCountry() {


		DetachedCriteria criteria = DetachedCriteria.forClass(Country.class); 
		
		return criteria.getExecutableCriteria(session()).list();
	}

}
