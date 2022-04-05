package com.example.demo.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entites.Hotel;


@Transactional
@Repository
public interface HotelRepository extends JpaRepository<Hotel, Integer> {

}
