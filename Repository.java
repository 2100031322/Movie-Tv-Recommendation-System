package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface Repository extends JpaRepository<User, String>{
		public List<User> findByPw(String pw);
	
}
