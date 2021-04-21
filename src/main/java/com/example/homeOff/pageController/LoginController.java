package com.example.homeOff.pageController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import java.util.logging.LogManager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.api.client.util.Value;

import ch.qos.logback.classic.Logger;

@Controller
@RequestMapping(value = ("/login"))
public class LoginController {
	HttpHeaders responseHeaders = new HttpHeaders();
	
	@GetMapping(value="/login")
	public ModelAndView pagelogin(){
		ModelAndView modelAndView = new ModelAndView("login/login");
		return modelAndView;
	}
	@GetMapping(value="/loginG")
	public ModelAndView pageloginGoogle(){
		ModelAndView modelAndView = new ModelAndView("login/login-google");
		return modelAndView;
	}
}
