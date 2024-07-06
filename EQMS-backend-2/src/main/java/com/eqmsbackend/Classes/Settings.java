package com.eqmsbackend.Classes;

import javax.persistence.*;

@Entity
public class Settings {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "organization_id")
	private int organizationId;
	private String organizationCode;
	private String organizationDate;
	private String organizationName;
	private String organizationTagline;
	private String organizationAddress;
	private String organizationCity;
	private String organizationState;
	private String organizationZipcode;
	private String organizationMobile;
	private String organizationPhone;
	private String organizationWebsite;
	private String organizationEmail;
	private String organizationPancard;
	private String organizationGST;
	private String organizationCIN;
	public int getOrganizationId() {
		return organizationId;
	}
	public void setOrganizationId(int organizationId) {
		this.organizationId = organizationId;
	}
	public String getOrganizationCode() {
		return organizationCode;
	}
	public void setOrganizationCode(String organizationCode) {
		this.organizationCode = organizationCode;
	}
	public String getOrganizationDate() {
		return organizationDate;
	}
	public void setOrganizationDate(String organizationDate) {
		this.organizationDate = organizationDate;
	}
	public String getOrganizationName() {
		return organizationName;
	}
	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}
	public String getOrganizationTagline() {
		return organizationTagline;
	}
	public void setOrganizationTagline(String organizationTagline) {
		this.organizationTagline = organizationTagline;
	}
	public String getOrganizationAddress() {
		return organizationAddress;
	}
	public void setOrganizationAddress(String organizationAddress) {
		this.organizationAddress = organizationAddress;
	}
	public String getOrganizationCity() {
		return organizationCity;
	}
	public void setOrganizationCity(String organizationCity) {
		this.organizationCity = organizationCity;
	}
	public String getOrganizationState() {
		return organizationState;
	}
	public void setOrganizationState(String organizationState) {
		this.organizationState = organizationState;
	}
	public String getOrganizationZipcode() {
		return organizationZipcode;
	}
	public void setOrganizationZipcode(String organizationZipcode) {
		this.organizationZipcode = organizationZipcode;
	}
	public String getOrganizationMobile() {
		return organizationMobile;
	}
	public void setOrganizationMobile(String organizationMobile) {
		this.organizationMobile = organizationMobile;
	}
	public String getOrganizationPhone() {
		return organizationPhone;
	}
	public void setOrganizationPhone(String organizationPhone) {
		this.organizationPhone = organizationPhone;
	}
	public String getOrganizationWebsite() {
		return organizationWebsite;
	}
	public void setOrganizationWebsite(String organizationWebsite) {
		this.organizationWebsite = organizationWebsite;
	}
	public String getOrganizationEmail() {
		return organizationEmail;
	}
	public void setOrganizationEmail(String organizationEmail) {
		this.organizationEmail = organizationEmail;
	}
	public String getOrganizationPancard() {
		return organizationPancard;
	}
	public void setOrganizationPancard(String organizationPancard) {
		this.organizationPancard = organizationPancard;
	}
	public String getOrganizationGST() {
		return organizationGST;
	}
	public void setOrganizationGST(String organizationGST) {
		this.organizationGST = organizationGST;
	}
	public String getOrganizationCIN() {
		return organizationCIN;
	}
	public void setOrganizationCIN(String organizationCIN) {
		this.organizationCIN = organizationCIN;
	}
	@Override
	public String toString() {
		return "Settings [organizationId=" + organizationId + ", organizationCode=" + organizationCode
				+ ", organizationDate=" + organizationDate + ", organizationName=" + organizationName
				+ ", organizationTagline=" + organizationTagline + ", organizationAddress=" + organizationAddress
				+ ", organizationCity=" + organizationCity + ", organizationState=" + organizationState
				+ ", organizationZipcode=" + organizationZipcode + ", organizationMobile=" + organizationMobile
				+ ", organizationPhone=" + organizationPhone + ", organizationWebsite=" + organizationWebsite
				+ ", organizationEmail=" + organizationEmail + ", organizationPancard=" + organizationPancard
				+ ", organizationGST=" + organizationGST + ", organizationCIN=" + organizationCIN + "]";
	}
	
	
	
	

}
