package com.example.homeOff.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.example.homeOff.commons.ConstantesCommon;
import com.example.homeOff.dto.CardDto;
import com.example.homeOff.dto.ResultCardDto;
import com.example.homeOff.model.ProyectoDetalleModel;

@Service
public class ProyectosService {
	
	public Object Producto(String card) {
		try {
			String uri = ConstantesCommon.BASE_PATH + ConstantesCommon.BOARD + "/"+ card + ConstantesCommon.CARD;
			
			RestTemplate restTemplate = new RestTemplate();
			HttpHeaders headers = new HttpHeaders();
			headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
			headers.setBearerAuth(ConstantesCommon.TOKEN);
			HttpEntity<String> request = new HttpEntity<String>(headers);
			ResponseEntity<ResultCardDto> response = restTemplate.exchange(uri, HttpMethod.GET, request, ResultCardDto.class);
			
			if(response.getStatusCode().equals(HttpStatus.OK)) {
				ProyectoDetalleModel model  = new ProyectoDetalleModel();
				List<CardDto> cards = new ArrayList<>();
				model.setTitulo(response.getBody().getCards().get(0).getParentCards()[0].getTitle());
				response.getBody().getCards().forEach(e ->{
					CardDto car = new CardDto();
					String uritask = ConstantesCommon.BASE_PATH + ConstantesCommon.CARD + "/" + e.getId() + ConstantesCommon.TASK;
					car = e;
					ResponseEntity<ResultCardDto> responses = restTemplate.exchange(uritask, HttpMethod.GET, request, ResultCardDto.class);
					if(responses.getStatusCode().equals(HttpStatus.OK))
						car.setTask(responses.getBody());
					cards.add(car);
				});
				model.setTarea(cards);
				return model;
			}else {
				Map<String, Object> mapa = Map.of("info", response.getBody());
				return mapa;
			}
		} catch (Exception e) {
			Map<String, Object> mapa = Map.of("info", e);
			return mapa;
		}
	}

}
