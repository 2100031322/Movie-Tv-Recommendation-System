package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Transient;

@Entity
public class User {
	
	@Id
	String un;
	String pw;
	@Transient
	String hiddenCaptcha;
	@Transient
	String captcha;
	@Transient
	String realCaptcha;
	
	public String getUn() {
		return un;
	}
	public void setUn(String un) {
		this.un = un;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getHiddenCaptcha() {
		return hiddenCaptcha;
	}
	public void setHiddenCaptcha(String hiddenCaptcha) {
		this.hiddenCaptcha = hiddenCaptcha;
	}
	public String getCaptcha() {
		return captcha;
	}
	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}
	public String getRealCaptcha() {
		return realCaptcha;
	}
	public void setRealCaptcha(String realCaptcha) {
		this.realCaptcha = realCaptcha;
	}
	
	

}
