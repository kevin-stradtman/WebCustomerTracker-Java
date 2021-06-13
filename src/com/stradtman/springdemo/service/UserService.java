package com.stradtman.springdemo.service;

import java.util.List;

import com.stradtman.springdemo.entity.User;

public interface UserService {

	List<User> getUsers();

	void saveUser(User theUser);

	User getUser(int theId);

	void deleteCustomer(int theId);

}
