package com.eqmsbackend.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eqmsbackend.Classes.Enquiry;
@Repository
public interface EnquiryFindRepo extends JpaRepository<Enquiry, Integer>
{
	public List<Enquiry> findByEnquiryAssignTo(String enquiryAssignTo);
	
	long countByEnquiryStatus(String enquiryStatus);
}
