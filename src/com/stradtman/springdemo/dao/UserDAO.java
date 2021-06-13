package com.stradtman.springdemo.dao;

import java.util.List;

import com.stradtman.springdemo.entity.User;

public interface UserDAO {

	List<User> getUsers();

	void saveUser(User theUser);

	User getUser(int theId);

	void deleteUser(int theId);

}
