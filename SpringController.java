package com.example.demo;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import cn.apiclub.captcha.Captcha;

@Controller
public class SpringController {
    
  @Autowired
  DAO dao;
    
  @RequestMapping(value = "/dash", method = RequestMethod.GET)
  public String fun1() {
      return "dashboard.jsp";
  }

  
  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public String fun2(Model m) {
    Captcha captcha = CaptchaUtil.createCaptcha(150, 50);
    User u = new User();
    u.setHiddenCaptcha(captcha.getAnswer());
    System.out.println(u.hiddenCaptcha);
    u.setCaptcha("");
    u.setRealCaptcha(CaptchaUtil.encodeCaptcha(captcha));
    m.addAttribute("command", u);
    return "login.jsp";
  }
  @PostMapping("/save")  
  public String fun3(@ModelAttribute("u1") User u1) {
    System.out.println(u1.captcha);
    System.out.println(u1.hiddenCaptcha);
    if(u1.captcha.equals(u1.hiddenCaptcha))
    {
      dao.Insert(u1);
      return "redirect:/show";
    }
    else {
      return "error.jsp";
    }
  }
  @GetMapping("/show")
  public String fun4(Model m) {
    List<User> ul=dao.showall();
    m.addAttribute("ul", ul);
    return "show.jsp";
  }
  @GetMapping("/password/{pw}")
  @ResponseBody
  public List<User> fun5 (@PathVariable String pw) {
	  return dao.retriveByPw(pw);
	  
  }
  @GetMapping("/sender")
  @ResponseBody
  public String fun6() {
	  Calculator c1=new Calculator();
	  c1.setA(10);
	  c1.setB(20);
	  String result=null;
	  try {
		URL url=new URL("http://localhost:8082/reciever/"+c1.getA()+"/"+c1.getB());
		HttpURLConnection con=(HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		con.setRequestProperty("Accept","application/json");
		//con.setRequestProperty("Content-Type","application/json");
		con.setUseCaches(false);
		//con.setDoOutput(true);
		//con.setDoInput(true);
		BufferedReader  br=new BufferedReader(new InputStreamReader(con.getInputStream()));
		c1.setResult(Integer.parseInt(br.readLine()));
		System.out.println(c1.getResult());
		result=String.valueOf(c1.getResult());
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return result;
  }
  
  @GetMapping("/sender2/{a}/{b}")
  @ResponseBody
  public String fun7(@PathVariable int a,@PathVariable int b) {
	  Calculator c1=new Calculator();
	  c1.setA(a);
	  c1.setB(b);
	  String result=null;
	  try {
		URL url=new URL("http://localhost:8082/reciver");
		HttpURLConnection con=(HttpURLConnection) url.openConnection();
		con.setRequestMethod("POST");
		con.setRequestProperty("Accept","application/json");
		con.setRequestProperty("Content-Type","application/json");
		con.setUseCaches(false);
		con.setDoOutput(true);
		//con.setDoInput(true);
		DataOutputStream dos=new DataOutputStream(con.getOutputStream());
	      dos.writeBytes(new Gson().toJson(c1));
		BufferedReader  br=new BufferedReader(new InputStreamReader(con.getInputStream()));
		c1.setResult(Integer.parseInt(br.readLine()));
		System.out.println(c1.getResult());
		result=String.valueOf(c1.getResult());
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return result;
  }
  @PostMapping("/dash")
  public String registerUser(@ModelAttribute("u1") User u1) {
   
      return "dashboard.jsp";
  }

  @RequestMapping(value = "/authenticate", method = RequestMethod.POST)
  public String login(Model model) {
      // Your login logic goes here (e.g., checking username and password)
      // If login is successful, you can redirect to the dashboard page
      return "redirect:/dash"; // Assuming "/dashboard" maps to your dashboard page
  }
  
}

