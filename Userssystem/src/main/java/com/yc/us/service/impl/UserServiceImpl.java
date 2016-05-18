package com.yc.us.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.us.entity.User;
import com.yc.us.mapper.UserMapper;
import com.yc.us.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	@Override
	public List<User> findAllUser() {
		return userMapper.getAllUsers();
	}
	
	@Override
	public User findUserById(int id) {
		return userMapper.getUserById(id);
	}

	@Override
	public boolean updateUserById(User user) {
		return userMapper.updateUserById(user);
	}

	
}
