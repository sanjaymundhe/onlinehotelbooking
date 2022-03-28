package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entites.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	/*@Query("select u.usertype,u.email from project.user u where email= :email and password= :password")
	public List<Object[]> checkLogin(String email,String password);*/
}
