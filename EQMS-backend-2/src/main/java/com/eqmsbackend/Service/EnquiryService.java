package com.eqmsbackend.Service;

import java.util.List;

import com.eqmsbackend.Classes.Enquiry;

public interface EnquiryService 
{
	void add_enquiry(Enquiry enquiry);

	List<Enquiry> list_enquiry();
	
	Enquiry edit_enquiry(int id);
	
	long total_enquiries();
	
	List<Enquiry> enquiry_assignTo(String enquiryAssignTo);
	
	long total_enquiries_status(String enquiryStatus);
	
}
