package com.eqmsbackend.Classes;

import javax.persistence.*;

@Entity
public class Enquiry 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "enquiry_id")
	private int enquiryId;
	private String enquiryDate;
	private String enquirySource;
	private String enquiryType;
	private String enquiryCustomerName;
	private String enquiryCustomerMobile;
	private String enquiryCustomerAddress;
	private String enquiryCreatedBy;
	private String enquiryCreatedOn;
	private String enquiryStatus;
	private String enquiryProductName;
	private String enquiryRemark;
	private String enquiryAssignDate;
	private String enquiryAssignTo;
	private String enquiryAssignRemark;
	private String enquiryFollowUpDate;
	private String enquiryFollowUpBy;
	private String enquiryFollowUpType;
	private String enquiryNextFollowUp;
	private String enquiryFollowUpRemark;
	
	
	public int getEnquiryId() {
		return enquiryId;
	}
	public void setEnquiryId(int enquiryId) {
		this.enquiryId = enquiryId;
	}
	public String getEnquiryDate() {
		return enquiryDate;
	}
	public void setEnquiryDate(String enquiryDate) {
		this.enquiryDate = enquiryDate;
	}
	public String getEnquirySource() {
		return enquirySource;
	}
	public void setEnquirySource(String enquirySource) {
		this.enquirySource = enquirySource;
	}
	public String getEnquiryType() {
		return enquiryType;
	}
	public void setEnquiryType(String enquiryType) {
		this.enquiryType = enquiryType;
	}
	public String getEnquiryCustomerName() {
		return enquiryCustomerName;
	}
	public void setEnquiryCustomerName(String enquiryCustomerName) {
		this.enquiryCustomerName = enquiryCustomerName;
	}
	public String getEnquiryCustomerMobile() {
		return enquiryCustomerMobile;
	}
	public void setEnquiryCustomerMobile(String enquiryCustomerMobile) {
		this.enquiryCustomerMobile = enquiryCustomerMobile;
	}
	public String getEnquiryCustomerAddress() {
		return enquiryCustomerAddress;
	}
	public void setEnquiryCustomerAddress(String enquiryCustomerAddress) {
		this.enquiryCustomerAddress = enquiryCustomerAddress;
	}
	public String getEnquiryCreatedBy() {
		return enquiryCreatedBy;
	}
	public void setEnquiryCreatedBy(String enquiryCreatedBy) {
		this.enquiryCreatedBy = enquiryCreatedBy;
	}
	public String getEnquiryCreatedOn() {
		return enquiryCreatedOn;
	}
	public void setEnquiryCreatedOn(String enquiryCreatedOn) {
		this.enquiryCreatedOn = enquiryCreatedOn;
	}
	public String getEnquiryStatus() {
		return enquiryStatus;
	}
	public void setEnquiryStatus(String enquiryStatus) {
		this.enquiryStatus = enquiryStatus;
	}
	public String getEnquiryProductName() {
		return enquiryProductName;
	}
	public void setEnquiryProductName(String enquiryProductName) {
		this.enquiryProductName = enquiryProductName;
	}
	public String getEnquiryRemark() {
		return enquiryRemark;
	}
	public void setEnquiryRemark(String enquiryRemark) {
		this.enquiryRemark = enquiryRemark;
	}
	public String getEnquiryAssignDate() {
		return enquiryAssignDate;
	}
	public void setEnquiryAssignDate(String enquiryAssignDate) {
		this.enquiryAssignDate = enquiryAssignDate;
	}
	public String getEnquiryAssignTo() {
		return enquiryAssignTo;
	}
	public void setEnquiryAssignTo(String enquiryAssignTo) {
		this.enquiryAssignTo = enquiryAssignTo;
	}
	public String getEnquiryAssignRemark() {
		return enquiryAssignRemark;
	}
	public void setEnquiryAssignRemark(String enquiryAssignRemark) {
		this.enquiryAssignRemark = enquiryAssignRemark;
	}
	public String getEnquiryFollowUpDate() {
		return enquiryFollowUpDate;
	}
	public void setEnquiryFollowUpDate(String enquiryFollowUpDate) {
		this.enquiryFollowUpDate = enquiryFollowUpDate;
	}
	public String getEnquiryFollowUpBy() {
		return enquiryFollowUpBy;
	}
	public void setEnquiryFollowUpBy(String enquiryFollowUpBy) {
		this.enquiryFollowUpBy = enquiryFollowUpBy;
	}
	public String getEnquiryFollowUpType() {
		return enquiryFollowUpType;
	}
	public void setEnquiryFollowUpType(String enquiryFollowUpType) {
		this.enquiryFollowUpType = enquiryFollowUpType;
	}
	public String getEnquiryNextFollowUp() {
		return enquiryNextFollowUp;
	}
	public void setEnquiryNextFollowUp(String enquiryNextFollowUp) {
		this.enquiryNextFollowUp = enquiryNextFollowUp;
	}
	public String getEnquiryFollowUpRemark() {
		return enquiryFollowUpRemark;
	}
	public void setEnquiryFollowUpRemark(String enquiryFollowUpRemark) {
		this.enquiryFollowUpRemark = enquiryFollowUpRemark;
	}
	
	
	@Override
	public String toString() {
		return "Enquiry [enquiryId=" + enquiryId + ", enquiryDate=" + enquiryDate + ", enquirySource=" + enquirySource
				+ ", enquiryType=" + enquiryType + ", enquiryCustomerName=" + enquiryCustomerName
				+ ", enquiryCustomerMobile=" + enquiryCustomerMobile + ", enquiryCustomerAddress="
				+ enquiryCustomerAddress + ", enquiryCreatedBy=" + enquiryCreatedBy + ", enquiryCreatedOn="
				+ enquiryCreatedOn + ", enquiryStatus=" + enquiryStatus + ", enquiryProductName=" + enquiryProductName
				+ ", enquiryRemark=" + enquiryRemark + ", enquiryAssignDate=" + enquiryAssignDate + ", enquiryAssignTo="
				+ enquiryAssignTo + ", enquiryAssignRemark=" + enquiryAssignRemark + ", enquiryFollowUpDate="
				+ enquiryFollowUpDate + ", enquiryFollowUpBy=" + enquiryFollowUpBy + ", enquiryFollowUpType="
				+ enquiryFollowUpType + ", enquiryNextFollowUp=" + enquiryNextFollowUp + ", enquiryFollowUpRemark="
				+ enquiryFollowUpRemark + "]";
	}
	
	
	

}
