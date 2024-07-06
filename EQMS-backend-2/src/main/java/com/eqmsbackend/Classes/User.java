package com.eqmsbackend.Classes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "user_id")
	private int userId;
	
	private String userType;
	private String userRole;
	private String userCompanyName;
	private String userPersonName;
	private String userPRN;
	private String userMobile;
	private String userEmail;
	private String userAddress;
	private String userCity;
	private String userState;
	private String userZipcode;
	private String userAadhar;
	private String userPan;
	private String userGST;
	private String userRemark;
	private String userProof;
	private String userDoc;
	private String userPassword;
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public String getUserCompanyName() {
		return userCompanyName;
	}
	public void setUserCompanyName(String userCompanyName) {
		this.userCompanyName = userCompanyName;
	}
	public String getUserPersonName() {
		return userPersonName;
	}
	public void setUserPersonName(String userPersonName) {
		this.userPersonName = userPersonName;
	}
	public String getUserPRN() {
		return userPRN;
	}
	public void setUserPRN(String userPRN) {
		this.userPRN = userPRN;
	}
	public String getUserMobile() {
		return userMobile;
	}
	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserCity() {
		return userCity;
	}
	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}
	public String getUserState() {
		return userState;
	}
	public void setUserState(String userState) {
		this.userState = userState;
	}
	public String getUserZipcode() {
		return userZipcode;
	}
	public void setUserZipcode(String userZipcode) {
		this.userZipcode = userZipcode;
	}
	public String getUserAadhar() {
		return userAadhar;
	}
	public void setUserAadhar(String userAadhar) {
		this.userAadhar = userAadhar;
	}
	public String getUserPan() {
		return userPan;
	}
	public void setUserPan(String userPan) {
		this.userPan = userPan;
	}
	public String getUserGST() {
		return userGST;
	}
	public void setUserGST(String userGST) {
		this.userGST = userGST;
	}
	public String getUserRemark() {
		return userRemark;
	}
	public void setUserRemark(String userRemark) {
		this.userRemark = userRemark;
	}
	public String getUserProof() {
		return userProof;
	}
	public void setUserProof(String userProof) {
		this.userProof = userProof;
	}
	public String getUserDoc() {
		return userDoc;
	}
	public void setUserDoc(String userDoc) {
		this.userDoc = userDoc;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userType=" + userType + ", userRole=" + userRole + ", userCompanyName="
				+ userCompanyName + ", userPersonName=" + userPersonName + ", userPRN=" + userPRN + ", userMobile="
				+ userMobile + ", userEmail=" + userEmail + ", userAddress=" + userAddress + ", userCity=" + userCity
				+ ", userState=" + userState + ", userZipcode=" + userZipcode + ", userAadhar=" + userAadhar
				+ ", userPan=" + userPan + ", userGST=" + userGST + ", userRemark=" + userRemark + ", userProof="
				+ userProof + ", userDoc=" + userDoc + ", userPassword=" + userPassword + "]";
	}
	
	
	
	
	
}
