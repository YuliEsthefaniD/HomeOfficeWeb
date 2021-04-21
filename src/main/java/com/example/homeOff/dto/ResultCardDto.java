package com.example.homeOff.dto;

import java.io.Serializable;
import java.util.List;

import lombok.Data;


public class ResultCardDto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private PageMetaDto pageMeta;
	private List<CardDto> cards;
	public PageMetaDto getPageMeta() {
		return pageMeta;
	}
	public void setPageMeta(PageMetaDto pageMeta) {
		this.pageMeta = pageMeta;
	}
	public List<CardDto> getCards() {
		return cards;
	}
	public void setCards(List<CardDto> cards) {
		this.cards = cards;
	}
	
}