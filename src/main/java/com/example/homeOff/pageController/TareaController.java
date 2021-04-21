package com.example.homeOff.pageController;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.homeOff.service.impl.ProyectosService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value ="/tarea")
public class TareaController {

    HttpHeaders responseHeaders = new HttpHeaders();
    public TareaController() {
		super();
		responseHeaders.setContentType(MediaType.APPLICATION_JSON);
		responseHeaders.add("Access-Control-Allow-Origin", "*");
		responseHeaders.add("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
		responseHeaders.add("Access-Control-Allow-Methods","GET, POST, PUT, DELETE");
	}
    
    @Autowired
    ProyectosService proyectosService;
    
    @GetMapping(value="/tareas-usuario")
	public ModelAndView pageProyecto(){
		ModelAndView modelAndView = new ModelAndView("tarea/tareas-usuario");
		return modelAndView;
	}

}
