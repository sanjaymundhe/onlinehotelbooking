package com.example.demo.repository;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.entites.User;

@Transactional
@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	@Query("select u from User u where email= :email")
	public User checKLogin(String email);
}
