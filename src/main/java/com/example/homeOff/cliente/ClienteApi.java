package com.example.homeOff.cliente;

import java.util.Arrays;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import com.example.homeOff.commons.ConstantesCommon;

@RestController
@RequestMapping(value = "/cliente/")
@CrossOrigin("*")
public class ClienteApi {
private static final String GETALLPROYECTS="https://totalplay.leankit.com/io/board/";
private static final String token="af8c9591748b5d745f3a39bdd98e4adac98ee01073c0ea1a86bee532bcd5d1c2afd652175689bf31b9de0a89df5224af30c7c536d086f1716a3cf837744dbc2e";
private static final String GETCARDFORID="https://totalplay.leankit.com/io/card?board=1520404280";
private static final String GETTASKFORID="https://totalplay.leankit.com/io/card/1529672200/tasks";
private static final String GETIDBOARD = "https://totalplay.leankit.com/io/board/";
private static final String GETCARD="https://totalplay.leankit.com/io/card/";
private static final String GETCARDCOMMENTS="https://totalplay.leankit.com/io/card/";
private static final String GETALLUSERS="https://totalplay.leankit.com/io/user";


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
	@GetMapping(value = "/leankit/boardId/{id}")
	public ResponseEntity<Object> callGetBoardId(@PathVariable String id) {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + token);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> request = new HttpEntity<String>(headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Object> response = restTemplate.exchange(GETIDBOARD+id
				, HttpMethod.GET, request, Object.class);
		response.getBody();

		System.out.println(response);

		return response;
	}
	@GetMapping(value = "/leankit/card/{id}")
	public ResponseEntity<Object> callgetCardId(@PathVariable String id) {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + token);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> request = new HttpEntity<String>(headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Object> response = restTemplate.exchange(GETCARD+id, HttpMethod.GET, request, Object.class);
		response.getBody();

		System.out.println(response);

		return response;
	}
	@GetMapping(value = "/leankit/cardcomments/{id}")
	public ResponseEntity<Object> callgetCardComments(@PathVariable String id) {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + token);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> request = new HttpEntity<String>(headers);

		RestTemplate restTemplate = new RestTemplate();
		System.out.println();
		ResponseEntity<Object> response = restTemplate.exchange(GETCARDCOMMENTS+id+"/comment", HttpMethod.GET, request, Object.class);
		response.getBody();

		System.out.println(response);

		return response;
	}
	@GetMapping(value = "/leankit/boardusers/{id}")
	public ResponseEntity<Object> callgetgetboardusers(@PathVariable String id) {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + token);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> request = new HttpEntity<String>(headers);

		RestTemplate restTemplate = new RestTemplate();
		///io/board/:boardId/assignedUsers
		ResponseEntity<Object> response = restTemplate.exchange(GETALLPROYECTS+id+"/assignedUsers", HttpMethod.GET, request, Object.class);
		response.getBody();

		System.out.println(response);

		return response;
	}
	@GetMapping(value = "/leankit/users")
	public ResponseEntity<Object> callGetUsers(){
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + token);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		HttpEntity<String> request = new HttpEntity<String>(headers);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<Object> response = restTemplate.exchange(GETALLUSERS, HttpMethod.GET, request, Object.class);
		response.getBody();
		System.out.println(response);
		
		return response;
		
	}
	

}


