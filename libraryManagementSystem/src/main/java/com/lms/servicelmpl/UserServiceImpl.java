package com.lms.servicelmpl;



import java.util.List;

import com.lms.dao.UserDao;
import com.lms.daolmpl.UserDaoImpl;
import com.lms.pojo.User;
import com.lms.service.UserService;

public class UserServiceImpl implements UserService {

	UserDao userDao = new UserDaoImpl();
	@Override
	public User checkLogin(String username, String password) {
		
		return userDao.checkLogin(username, password);
	}
	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		return userDao.addUser(user);
	}
	@Override
	public List<User> getAllUserList() {
		return userDao.getAllUserList()	;
	}
	@Override
	public User getUserById(long userId) {
		// TODO Auto-generated method stub
		return userDao.getUserById(userId);
	}
	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return userDao.updateUser(user);
	}
	

}
