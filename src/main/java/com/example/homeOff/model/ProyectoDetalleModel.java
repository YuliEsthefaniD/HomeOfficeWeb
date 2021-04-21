package com.example.homeOff.model;

import java.io.Serializable;
import java.util.List;

import com.example.homeOff.dto.CardDto;

import lombok.Data;


public class ProyectoDetalleModel implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String titulo;
	private List<CardDto> tarea;
	
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public List<CardDto> getTarea() {
		return tarea;
	}
	public void setTarea(List<CardDto> tarea) {
		this.tarea = tarea;
	}
}
