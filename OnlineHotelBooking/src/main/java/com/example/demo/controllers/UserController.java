package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entites.User;
import com.example.demo.services.UserService;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class UserController
{

	@Autowired
	UserService uservice;
	
	@GetMapping("/getuser")
	public List<User> getAll()
	{
		return uservice.getUser();
	}
	
	@PostMapping("/register")
	public User save(@RequestBody User q)
	{
		
		return uservice.save(q);
	}
	
	
	/*@PostMapping("/checkLogin")
	public Object checkLogin(@RequestBody User u)
	{
		return uservice.checkLogin(u.getEmail(), u.getPassword());
	}
	*/
	
	
}
