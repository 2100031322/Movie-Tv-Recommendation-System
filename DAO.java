package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DAO {
  @Autowired
  Repository repo;
  public void Insert(User u) {
    repo.save(u);
  }
  
  public List<User> showall()
  {
    return repo.findAll();
  }
  
  public List<User> retriveByPw(String pw)
  {
	  return repo.findByPw(pw);
  }

}

