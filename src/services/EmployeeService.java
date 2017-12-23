package edu.daffodil.ssb.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.daffodil.ssb.dao.Employee;
import edu.daffodil.ssb.dao.EmployeeDao;

@Service("employeeService")
public class EmployeeService {

	
	private EmployeeDao employeeDao;

	@Autowired
	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}

	public void saveEmployee(Employee employee) {
		employeeDao.saveEmployee(employee);
		
	}
	
	public void deleteEmployee(Employee id) {
		employeeDao.deleteEmployee(id);
	}
	
	public void updateEmployee(Employee employee) {
		employeeDao.updateEmployee(employee);
	}

	public List<Employee> showEmployee() {
		
		return employeeDao.showEmployee();
	}

	public Employee showEmployeeById(int empId) {
		
		return employeeDao.showEmployeeById(empId);
	}

	
}
