package com.example.homeOff.model;

import java.io.Serializable;

public class Persona implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1692225123147307048L;
	
	private String email;
	private String nombre;
	private String tokenLeankit;
	
	
	public String getTokenLeankit() {
		return tokenLeankit;
	}
	public void setTokenLeankit(String tokenLeankit) {
		this.tokenLeankit = tokenLeankit;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	@Override
	public String toString() {
		return "Persona [email=" + email + ", nombre=" + nombre + ", tokenLeankit=" + tokenLeankit + "]";
	}

	

}
