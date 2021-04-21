package com.example.homeOff.pageController;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = ("/general"))
public class GeneralController {
  
	 HttpHeaders responseHeaders = new HttpHeaders();
	    public GeneralController() {
			super();
			responseHeaders.setContentType(MediaType.APPLICATION_JSON);
			responseHeaders.add("Access-Control-Allow-Origin", "*");
			responseHeaders.add("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
			responseHeaders.add("Access-Control-Allow-Methods","GET, POST, PUT, DELETE");
		}
		@GetMapping(value="/vista-general")
		public ModelAndView pageProyecto(){
			ModelAndView modelAndView = new ModelAndView("general/vista-general");
			return modelAndView;
		}
	}