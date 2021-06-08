package com.stradtman.springdemo.dao;

import java.util.List;

import com.stradtman.springdemo.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();
	
}
