package com.example.homeOff.dto;

import java.io.Serializable;

public class CommentDto implements Serializable {

	private static final long serialVersionUID = 1L;
    
	private String id;
	private String op;
	private String path;
	private String value;

	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
    
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "CommentDto [op=" + op + ", path=" + path + ", value=" + value + "]";
	}

}
