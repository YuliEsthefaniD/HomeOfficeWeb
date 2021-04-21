package com.example.homeOff.dto;

import java.io.Serializable;
import java.util.List;

import org.w3c.dom.ls.LSInput;

import lombok.Data;


public class CardDto implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String title;
	private String priority;
	private boolean isDone;
	private ParentCardsDto[] parentCards;
	private List<AssignedUsersDto> assignedUsers;
	private ResultCardDto task;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public boolean isDone() {
		return isDone;
	}
	public void setDone(boolean isDone) {
		this.isDone = isDone;
	}
	public ParentCardsDto[] getParentCards() {
		return parentCards;
	}
	public void setParentCards(ParentCardsDto[] parentCards) {
		this.parentCards = parentCards;
	}
	public List<AssignedUsersDto> getAssignedUsers() {
		return assignedUsers;
	}
	public void setAssignedUsers(List<AssignedUsersDto> assignedUsers) {
		this.assignedUsers = assignedUsers;
	}
	public ResultCardDto getTask() {
		return task;
	}
	public void setTask(ResultCardDto task) {
		this.task = task;
	}
}