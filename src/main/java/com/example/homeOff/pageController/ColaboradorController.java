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
@RequestMapping(value = ("/colaborador"))
public class ColaboradorController {

    HttpHeaders responseHeaders = new HttpHeaders();
    public ColaboradorController() {
		super();
		responseHeaders.setContentType(MediaType.APPLICATION_JSON);
		responseHeaders.add("Access-Control-Allow-Origin", "*");
		responseHeaders.add("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
		responseHeaders.add("Access-Control-Allow-Methods","GET, POST, PUT, DELETE");
	}
	@GetMapping(value="/colaboradores")
	public ModelAndView pageColaborador(){
		ModelAndView modelAndView = new ModelAndView("colaborador/colaboradores");
		return modelAndView;
	}
	
	@GetMapping(value="/tareas-colaborador")
	public ModelAndView pageTareasColaborador(){
		ModelAndView modelAndView = new ModelAndView("colaborador/tareas-colaborador");
		return modelAndView;
	}
}
