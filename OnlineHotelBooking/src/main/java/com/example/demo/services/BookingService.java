package com.example.demo.services;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entites.Booking;
import com.example.demo.entites.Room;
import com.example.demo.repository.BookingRepository;
import com.example.demo.repository.RoomRepository;
import com.example.demo.repository.UserRepository;

@Service
public class BookingService {
	
	@Autowired
	BookingRepository brepo;
	
	@Autowired
	RoomRepository rrepo;

	public int booking(Booking b, int rid, int uid) 
	{
		int n=b.getNo_of_rooms();
		int days=b.getCheckout().getDay()-b.getCheckin().getDay();
		System.out.println(days);
		Room room=rrepo.getById(rid);
		
		double totalcost=(room.getRateperday()*days*n);
		
		LocalDate bookingdate=LocalDate.now();
		System.out.println(bookingdate);
		
				
		return brepo.BookingBy(bookingdate,b.getCheckin(),b.getCheckout(),b.getNo_of_rooms(),b.getStatus(),rid,uid,totalcost);
	}

	public List<Booking> getBookings() {
		// TODO Auto-generated method stub
		return brepo.findAll();
	}

}
