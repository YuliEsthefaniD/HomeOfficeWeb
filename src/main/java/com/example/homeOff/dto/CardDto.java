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
	private String plannedFinish;
	private Integer laneId;
	private List<LaneTaskDto> lanes;
	
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
	public String getPlannedFinish() {
		return plannedFinish;
	}
	public void setPlannedFinish(String plannedFinish) {
		if(plannedFinish!=null) {
			String mesString;
			String string = plannedFinish;
			String[] parts = string.split("-");
			mesString = parts[1];
			System.out.println(parts[1]);
			switch (parts[1]) {
	        case "01":  mesString = "Enero";
	                 break;
	        case "02":  mesString  = "Febrero";
	                 break;
	        case "03":  mesString = "Marzo";
	                 break;
	        case "04":  mesString = "Abril";
	                 break;
	        case "05":  mesString = "Mayo";
	                 break;
	        case "06":  mesString = "Junio";
	                 break;
	        case "07":  mesString = "Julio";
	                 break;
	        case "08":  mesString = "Agosto";
	                 break;
	        case "09":  mesString = "Septiembre";
	                 break;
	        case "10": mesString = "Octubre";
	                 break;
	        case "11": mesString = "Noviembre";
	                 break;
	        case "12": mesString = "Diciembre";
	                 break;
	        default: mesString = "Invalid month";
	                 break;
	        }
			plannedFinish = parts[2] + " " + mesString;
		}else {
			plannedFinish = "TBD"; 
		}
		this.plannedFinish = plannedFinish;
	}
	public Integer getLaneId() {
		return laneId;
	}
	public void setLaneId(Integer laneId) {
		this.laneId = laneId;
	}
	public List<LaneTaskDto> getLanes() {
		return lanes;
	}
	public void setLanes(List<LaneTaskDto> lanes) {
		this.lanes = lanes;
	}
	
    
}