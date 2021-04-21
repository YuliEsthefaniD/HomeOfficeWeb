package com.example.homeOff.dto;

import java.io.Serializable;

import lombok.Data;

@Data
public class AssignedUsersDto implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String fullName;
	private String avatar;
	private String emailAddress;
}