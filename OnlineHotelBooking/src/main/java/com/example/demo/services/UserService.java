package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entites.User;
import com.example.demo.repository.UserRepository;

@Service
public class UserService
{

	@Autowired
	UserRepository urepo;
	
	public List<User> getUser()
	{
		return urepo.findAll();
	}
	
	public User save(User q)
	{
	
		return urepo.save(q);
	}
	
	/*public Object checkLogin(String email,String password)
	{
		List<Object[]> u=urepo.checkLogin(email, password);
		if(u.size()==1)
		{
			User p=null;
			 if(u.get(0)[0].equals("customer"))
			 {
				 System.out.println("in custmer");
			 }
			 return p;
		}
		else
		{
			return null;
		}
	}*/
}
