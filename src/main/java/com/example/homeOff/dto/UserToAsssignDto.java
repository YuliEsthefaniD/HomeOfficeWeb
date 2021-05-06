package com.example.homeOff.dto;

public class UserToAsssignDto {

	private String id;
private String cardIds;
private String userIdsToAssign;
private String wipOverrideComment;
private String userIdsToUnassign;



public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getCardIds() {
	return cardIds;
}
public void setCardIds(String cardIds) {
	this.cardIds = cardIds;
}
public String getUserIdsToAssign() {
	return userIdsToAssign;
}
public void setUserIdsToAssign(String userIdsToAssign) {
	this.userIdsToAssign = userIdsToAssign;
}
public String getWipOverrideComment() {
	return wipOverrideComment;
}
public void setWipOverrideComment(String wipOverrideComment) {
	this.wipOverrideComment = wipOverrideComment;
}
public String getUserIdsToUnassign() {
	return userIdsToUnassign;
}
public void setUserIdsToUnassign(String userIdsToUnassign) {
	this.userIdsToUnassign = userIdsToUnassign;
}


@Override
public String toString() {
	return "UserToAsssignDto [cardIds=" + cardIds + ", userIdsToAssign=" + userIdsToAssign + ", wipOverrideComment="
			+ wipOverrideComment + ", userIdsToUnassign=" + userIdsToUnassign + "]";
}

}
