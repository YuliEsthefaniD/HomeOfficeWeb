package com.example.homeOff.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.example.homeOff.commons.ConstantesCommon;
import com.example.homeOff.dto.AddCommentDto;
import com.example.homeOff.dto.CommentDto;
import com.example.homeOff.dto.PersonaDTO;
import com.example.homeOff.dto.TaskDto;
import com.example.homeOff.dto.UserToAsssignDto;
import com.example.homeOff.model.Persona;
import com.example.homeOff.service.api.PersonaServiceAPI;

@RestController
@RequestMapping(value = "/persona/api/v1/")
public class PersonaRestController {

	@Autowired
	private PersonaServiceAPI personaServiceAPI;

	@GetMapping(value = "/all")
	public List<PersonaDTO> getAll() throws Exception {
		return personaServiceAPI.getAll();
	}

	@RequestMapping(value = "/login")
	public ModelAndView pagelogin() {
		ModelAndView modelAndView = new ModelAndView("login");
		return modelAndView;
	}

	@GetMapping(value = "/find/{id}")
	public PersonaDTO find(@PathVariable String id) throws Exception {
		return personaServiceAPI.get(id);
	}

	@PostMapping(value = "/save/{id}")
	public ResponseEntity<String> save(@RequestBody Persona persona, @PathVariable String id) throws Exception {
		if (id == null || id.length() == 0 || id.equals("null")) {
			id = personaServiceAPI.save(persona);
		} else {
			personaServiceAPI.save(persona, id);
		}
		return new ResponseEntity<String>(id, HttpStatus.OK);
	}

	@GetMapping(value = "/delete/{id}")
	public ResponseEntity<PersonaDTO> delete(@PathVariable String id) throws Exception {
		PersonaDTO persona = personaServiceAPI.get(id);
		if (persona != null) {
			personaServiceAPI.delete(id);
		} else {
			return new ResponseEntity<PersonaDTO>(HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<PersonaDTO>(persona, HttpStatus.OK);
	}

	@PatchMapping(value = "/editCardTitle")
	public void editCard(@RequestBody CommentDto patchDocument) {
		
		
		String uri = ConstantesCommon.BASE_PATH + ConstantesCommon.CARD+ "/"+ patchDocument.getId() ;
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + ConstantesCommon.TOKEN);
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		String value = patchDocument.getValue();
		String strJson = "[{\"op\": \"replace\", \"path\": \"/description\", \"value\": \"" + value + "\"}]";

		HttpEntity<String> request = new HttpEntity<String>(strJson, headers);
		RestTemplate restTemplate = new RestTemplate(new HttpComponentsClientHttpRequestFactory());
		restTemplate.patchForObject(uri, request, String.class);
	}
	
	
	@PostMapping(value = "/addComment")
    public void addComnt(@RequestBody AddCommentDto comment) {
		
		String uri = ConstantesCommon.BASE_PATH + ConstantesCommon.CARD+ "/"+comment.getId() + "/"+ "comment" ;
				
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + ConstantesCommon.TOKEN);
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		String comnt= comment.getText();
		
		String strJson = "[{ \"text\": \"" + comnt + "\"}]";
		
		Map<String, Object> params = new HashMap<>();
		params.put("text", comnt);
		                  
		HttpEntity<Map<String, Object>> entity = new HttpEntity<>(params, headers);
		
		ResponseEntity<String> response = restTemplate.exchange(uri, HttpMethod.POST, entity, String.class);
    }
	
	@PostMapping(value = "/addTask")
    public void addTask(@RequestBody TaskDto task) {
		
		String uri = ConstantesCommon.BASE_PATH + ConstantesCommon.CARD+ "/"+task.getId() + "/"+ "tasks" ;
				
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + ConstantesCommon.TOKEN);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		headers.setContentType(MediaType.APPLICATION_JSON);
		
		String addtask= task.getTitle();
		Map<String, Object> params = new HashMap<>();
		params.put("title", addtask);
		params.put("laneType", "ready");
		params.put("typeId", "1553458172");
		
		HttpEntity<Map<String, Object>> request = new HttpEntity<>(params, headers);

		RestTemplate restTemp = new RestTemplate(new HttpComponentsClientHttpRequestFactory());
		restTemp.postForObject(uri, request, String.class);
			
    }
	
	
	@PostMapping(value = "/addUserCard")
    public void userAssign(@RequestBody UserToAsssignDto user) {
				
		String uri = ConstantesCommon.BASE_PATH + ConstantesCommon.CARD+ "/"+ "assign" ;				
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + ConstantesCommon.TOKEN);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);		
		String card= user.getCardIds();
		String Asign= user.getUserIdsToAssign();
		String usus= Asign.replace("," ,"\",\"");
		String strJson = "{\"cardIds\": [\""+card+"\"], \"userIdsToAssign\": [\""+usus+"\"], \"wipOverrideComment\": \"New User\"}";
				                  
		HttpEntity<String>  request = new HttpEntity<>(strJson, headers);
		
		RestTemplate restTemp = new RestTemplate(new HttpComponentsClientHttpRequestFactory());
		restTemp.postForObject(uri, request, String.class);
        
    }
	
	@PostMapping(value = "/deleteUserCard")
    public void userUnAssign(@RequestBody UserToAsssignDto user) {
		
		String uri = ConstantesCommon.BASE_PATH + ConstantesCommon.CARD+ "/"+ "assign" ;				
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + ConstantesCommon.TOKEN);
		headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
		headers.setContentType(MediaType.APPLICATION_JSON_UTF8);		
		String card= user.getCardIds();
		String Asign= user.getUserIdsToUnassign();
		String usus= Asign.replace("," ,"\",\"");
		String strJson = "{\"cardIds\": [\""+card+"\"], \"userIdsToUnassign\": [\""+usus+"\"], \"wipOverrideComment\": \"New User\"}";
		HttpEntity<String>  request = new HttpEntity<>(strJson, headers);
				                  
		RestTemplate restTemp = new RestTemplate(new HttpComponentsClientHttpRequestFactory());
		restTemp.postForObject(uri, request, String.class);
		 
    }
	
	@PatchMapping(value = "/lane")
	public void editLaneCard(@RequestBody CommentDto patchDocument) {

		String uri = ConstantesCommon.BASE_PATH + ConstantesCommon.CARD+ "/"+ patchDocument.getId() ;
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer " + ConstantesCommon.TOKEN);
		headers.setContentType(MediaType.APPLICATION_JSON);
		System.out.println("DATOS"+ patchDocument);
		String value = patchDocument.getValue();
		String strJson = "[{\"op\": \"replace\", \"path\": \"/laneId\", \"value\": \"" + value + "\"}]";

		HttpEntity<String> request = new HttpEntity<String>(strJson, headers);
		RestTemplate restTemplate = new RestTemplate(new HttpComponentsClientHttpRequestFactory());
		restTemplate.patchForObject(uri, request, String.class);
	}
}
