package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entites.Room;

public interface RoomRepository extends JpaRepository<Room, Integer> {

	
	@Query("select r from Room r where hotelid= :hotelid")
	List<Room> getByid(int hotelid);

}
