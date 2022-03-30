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
	
	public User checklogin(String email,String password)
	{
		User u=urepo.checKLogin(email);
		if(u!=null)
		{
			 if(email.equals(u.getEmail())&&password.equals(u.getPassword()))
			 {
				 System.out.println("login valid");
				 return u;
				 
			 }
			 else
			 {
				 System.out.println("login failed");
				 return null;
			 }
			 
			
		}
		 else
		 {
			 System.out.println("login failed");
			 return null;
		 }
			
			
			 
			 
		
	}
}
