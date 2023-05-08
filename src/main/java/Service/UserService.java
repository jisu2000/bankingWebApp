package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Entities.User;
import Repository.UserDao;

@Service
public class UserService {
	
	@Autowired
	private UserDao dao;
	
	
	public void addUser(User user)
	{
		this.dao.addUser(user);
	}
	
	public List<User> getAllUser()
	{
		return(List<User>) this.dao.getalluser();
	}
	
	public User getUser(int id)
	{
		return this.dao.getUser(id);
	}
	
	public void delUser(int id)
	{
		this.dao.delUser(id);
	}
	
	public User getUserneft(int acc,String ifsc)
	{
		return this.dao.getUserByAccNoAndIfSc(acc, ifsc);
	}
}
