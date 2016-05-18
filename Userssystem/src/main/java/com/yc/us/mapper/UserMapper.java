package com.yc.us.mapper;

import java.util.List;

import com.yc.us.entity.User;

public interface UserMapper {
	List<User> getAllUsers();
	User getUserById(int id);
	boolean updateUserById(User user);
}
