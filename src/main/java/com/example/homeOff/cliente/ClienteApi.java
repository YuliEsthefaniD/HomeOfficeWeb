package com.example.homeOff.cliente;

import java.util.Arrays;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping(value = "/cliente/")
@CrossOrigin("*")
public class ClienteApi {
private static final String GETALLPROYECTS="https://totalplay.leankit.com/io/board/";
private static final String token="af8c9591748b5d745f3a39bdd98e4adac98ee01073c0ea1a86bee532bcd5d1c2afd652175689bf31b9de0a89df5224af30c7c536d086f1716a3cf837744dbc2e";
private static final String GETCARDFORID="https://totalplay.leankit.com/io/board/1520404280/card";
private static final String GETTASKFORID="https://totalplay.leankit.com/io/card/1520584842/tasks";
private static final String GETIDBOARD = "https://totalplay.leankit.com/io/board/1520404280";

static RestTemplate restTemplate = new RestTemplate();


	@GetMapping(value = "/leankit/board")
	public ResponseEntity<Object> callGetProyect(){
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + token);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> request = new HttpEntity<String>(headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Object> response = restTemplate.exchange(GETALLPROYECTS, HttpMethod.GET, request, Object.class);
		response.getBody();

		
		System.out.println(response);
		
		return response;
		
	}
	
	@GetMapping(value = "/leankit/cardId")
	public ResponseEntity<Object> callGetCard(){
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + token);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> request = new HttpEntity<String>(headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Object> response = restTemplate.exchange(GETCARDFORID, HttpMethod.GET, request, Object.class);
		response.getBody();

		
		System.out.println(response);
		
		return response;
		
	}
	
	@GetMapping(value = "/leankit/taskId")
	public ResponseEntity<Object> callGetTask(){
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + token);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> request = new HttpEntity<String>(headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Object> response = restTemplate.exchange(GETTASKFORID, HttpMethod.GET, request, Object.class);
		response.getBody();

		
		System.out.println(response);
		
		return response;
		
	}
	@GetMapping(value = "/leankit/boardId")
	public ResponseEntity<Object> callGetBoardId() {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + token);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> request = new HttpEntity<String>(headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Object> response = restTemplate.exchange(GETIDBOARD, HttpMethod.GET, request, Object.class);
		response.getBody();

		System.out.println(response);

		return response;
	}
}


