package com.eqmsbackend.Classes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Section 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "section_id")
	private int sectionId;
	private String sectionName;
	private String sectionDescription;
	private String sectionGroup;
	public int getSectionId() {
		return sectionId;
	}
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	public String getSectionName() {
		return sectionName;
	}
	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	public String getSectionDescription() {
		return sectionDescription;
	}
	public void setSectionDescription(String sectionDescription) {
		this.sectionDescription = sectionDescription;
	}
	public String getSectionGroup() {
		return sectionGroup;
	}
	public void setSectionGroup(String sectionGroup) {
		this.sectionGroup = sectionGroup;
	}
	@Override
	public String toString() {
		return "Section [sectionId=" + sectionId + ", sectionName=" + sectionName + ", sectionDescription="
				+ sectionDescription + ", sectionGroup=" + sectionGroup + "]";
	}
	
	

}
