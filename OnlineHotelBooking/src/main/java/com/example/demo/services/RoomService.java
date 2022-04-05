package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entites.Room;
import com.example.demo.entites.User;
import com.example.demo.repository.RoomRepository;
import com.example.demo.repository.UserRepository;

@Service
public class RoomService {

	@Autowired
	RoomRepository rrepo;
	
	public List<Room> getRoom()
	{
		return rrepo.findAll();
	}

	public List<Room> getRoomByid(int hotelid) {
		
		return rrepo.getByid(hotelid);
	}

}
