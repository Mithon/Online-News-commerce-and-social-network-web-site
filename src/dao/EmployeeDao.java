package edu.daffodil.ssb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
@Component("employeeDao")
public class EmployeeDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session session(){
		return sessionFactory.getCurrentSession();
	}

	public void saveEmployee(Employee employee){
		session().save(employee);
	}
	
	public void deleteEmployee(Employee id){
		session().delete(id);
	}
	
	public void updateEmployee(Employee employee){
		session().update(employee);
	}

	@SuppressWarnings("unchecked")
	public List<Employee> showEmployee() {
		
		DetachedCriteria criteria = DetachedCriteria.forClass(Employee.class); 
		
		return criteria.getExecutableCriteria(session()).list();
	}

	public Employee showEmployeeById(int empId) {
		
		DetachedCriteria criteria = DetachedCriteria.forClass(Employee.class); 
		criteria.add(Restrictions.eq("id", empId));
		return (Employee) criteria.getExecutableCriteria(session()).uniqueResult();
	}

}
