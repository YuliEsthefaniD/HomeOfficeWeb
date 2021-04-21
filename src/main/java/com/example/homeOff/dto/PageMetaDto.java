package com.example.homeOff.dto;

import java.io.Serializable;

import lombok.Data;

@Data
public class PageMetaDto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer totalRecords;
	private Integer offset;
	private Integer limit;
	private Integer startRow;
	private Integer endRow;
}