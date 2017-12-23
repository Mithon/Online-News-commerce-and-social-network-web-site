package edu.daffodil.ssb.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee")
public class Employee {
	
	@Id
	@Column(name ="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name ="name")
	private String name;
	
	@Column(name ="address")
	private String address;
	
	//@Column(name ="country")
	//private int country;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	/**
	public int getCountry() {
		return country;
	}

	public void setCountry(int country) {
		this.country = country;
	}
	
	**/
	
	
}
