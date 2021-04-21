package com.example.homeOff.pageController;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = ("/perfil"))
public class OrganigramaController {

    HttpHeaders responseHeaders = new HttpHeaders();
    public OrganigramaController() {
		super();
		responseHeaders.setContentType(MediaType.APPLICATION_JSON);
		responseHeaders.add("Access-Control-Allow-Origin", "*");
		responseHeaders.add("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
		responseHeaders.add("Access-Control-Allow-Methods","GET, POST, PUT, DELETE");
	}
	@GetMapping(value="/organigrama")
	public ModelAndView pageOrganigrama(){
		ModelAndView modelAndView = new ModelAndView("organigrama/organigrama");
		return modelAndView;
	}
	@GetMapping(value="/perfil")
	public ModelAndView pagePerfil(){
		ModelAndView modelAndView = new ModelAndView("organigrama/perfil");
		return modelAndView;
	}
}
