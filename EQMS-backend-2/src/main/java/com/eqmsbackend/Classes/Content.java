package com.eqmsbackend.Classes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Content 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "content_id")
	private int contentId;
	private String contentSectionName;
	private String contentName;
	private String contentDescription;
	public int getContentId() {
		return contentId;
	}
	public void setContentId(int contentId) {
		this.contentId = contentId;
	}
	public String getContentSectionName() {
		return contentSectionName;
	}
	public void setContentSectionName(String contentSectionName) {
		this.contentSectionName = contentSectionName;
	}
	public String getContentName() {
		return contentName;
	}
	public void setContentName(String contentName) {
		this.contentName = contentName;
	}
	public String getContentDescription() {
		return contentDescription;
	}
	public void setContentDescription(String contentDescription) {
		this.contentDescription = contentDescription;
	}
	@Override
	public String toString() {
		return "Content [contentId=" + contentId + ", contentSectionName=" + contentSectionName + ", contentName="
				+ contentName + ", contentDescription=" + contentDescription + "]";
	}
	
	
	
	

}
