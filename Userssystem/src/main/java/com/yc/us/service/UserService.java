package com.yc.us.service;

import java.util.List;

import com.yc.us.entity.User;

public interface UserService {

	public List<User> findAllUser();
	
	User findUserById(int id);

	boolean updateUserById(User user);
}
