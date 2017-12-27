package com.niit.Dao;



import java.util.List;

import com.niit.model.User;

public interface UserDao {
	public boolean addUser(User user);
		
	public List<User> findByUsername(String useranme);

	public User getUser(String userEmail);

	public User getByEmailId(String name);
		}
