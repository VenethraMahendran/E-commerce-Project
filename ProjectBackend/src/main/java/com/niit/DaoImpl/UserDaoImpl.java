package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.UserDao;
import com.niit.model.User;

@Repository("UserDao")
public class UserDaoImpl implements UserDao {

	@Autowired 
	SessionFactory sessionFactory;
	@Transactional 
	public boolean addUser(User user) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception arised"+e);
		return false;
		}
	}
	public List<User> findByUsername(String userName)
	{
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		Query<User> query = session.createQuery("from User where username= :username");
		query.setParameter("username", userName);
		@SuppressWarnings("deprecation")
		List<User> listUser = query.list();
		session.close();
		return listUser;
	}
	
	public User getUser(String useremail) {
		Session session = sessionFactory.openSession();
		User user = (User)session.get(User.class,useremail);
		session.close();
		return user;
	}
	public User getByEmailId(String name) {
		// TODO Auto-generated method stub
		return null;
	}
}
