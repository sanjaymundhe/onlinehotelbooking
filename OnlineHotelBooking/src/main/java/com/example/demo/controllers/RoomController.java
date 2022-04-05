package com.example.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entites.Room;
import com.example.demo.entites.User;
import com.example.demo.services.RoomService;
import com.example.demo.services.UserService;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class RoomController {

	@Autowired
	RoomService rservice;
	
	@GetMapping("/getroom")
	public List<Room> getAll()
	{
		return rservice.getRoom();
	}
	
	@PostMapping("/checkroom")
	public List<Room> getroombyid(@RequestParam(value="hotelid") int hotelid)
	{
		return rservice.getRoomByid(hotelid);
	}
}
