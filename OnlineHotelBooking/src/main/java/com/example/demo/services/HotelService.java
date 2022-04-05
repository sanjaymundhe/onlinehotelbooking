package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entites.Hotel;
import com.example.demo.repository.HotelRepository;
import com.example.demo.repository.UserRepository;

@Service
public class HotelService {

	@Autowired
	HotelRepository hrepo;

	public Hotel getByid(int hotelid) 
	{
		System.out.println(hrepo.getById(hotelid));
		
		return hrepo.getById(hotelid);
	}
}
