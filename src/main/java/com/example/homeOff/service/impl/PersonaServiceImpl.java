package com.example.homeOff.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.homeOff.commons.GenericServiceImpl;
import com.example.homeOff.dto.PersonaDTO;
import com.example.homeOff.model.Persona;
import com.example.homeOff.service.api.PersonaServiceAPI;
import com.google.cloud.firestore.CollectionReference;
import com.google.cloud.firestore.Firestore;

@Service
public class PersonaServiceImpl extends GenericServiceImpl<Persona, PersonaDTO> implements PersonaServiceAPI {
	
	@Autowired
	private Firestore firestore;

	@Override
	public CollectionReference getCollection() {
		return firestore.collection("Usuarios");
	}

}
