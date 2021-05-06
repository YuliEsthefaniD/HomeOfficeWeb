package com.example.homeOff.dto;

public class TaskDto {
	
	private String id;
	private String title;
	private String laneType;
	private String typeId;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLaneType() {
		return laneType;
	}
	public void setLaneType(String laneType) {
		this.laneType = laneType;
	}
	public String getTypeId() {
		return typeId;
	}
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}
	
	@Override
	public String toString() {
		return "TaskDto [title=" + title + ", laneType=" + laneType + ", typeId=" + typeId + "]";
	}
	
	
}
