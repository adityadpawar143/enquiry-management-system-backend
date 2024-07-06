package com.eqmsbackend.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eqmsbackend.Classes.Enquiry;
import com.eqmsbackend.Repository.EnquiryFindRepo;
import com.eqmsbackend.Repository.EnquiryRepository;
import com.eqmsbackend.Service.EnquiryService;

@Service
public class EnquiryDao implements EnquiryService
{
	@Autowired
	EnquiryRepository enquiryRepository;

	@Autowired
	EnquiryFindRepo enquiryFindRepo;
	
	@Override
	public void add_enquiry(Enquiry enquiry) 
	{
		enquiryRepository.save(enquiry);
		
	}



	@Override
	public List<Enquiry> list_enquiry() {
		return enquiryRepository.findAll();
	}



	@Override
	public long total_enquiries() {
		return enquiryRepository.count();
	}



	@Override
	public Enquiry edit_enquiry(int id) {
		Enquiry E = enquiryRepository.getById(id);
		return E;
	}



	@Override
	public List<Enquiry> enquiry_assignTo(String enquiryAssignTo) {
		List<Enquiry> E = enquiryFindRepo.findByEnquiryAssignTo(enquiryAssignTo);
		return E;
	}



	@Override
	public long total_enquiries_status(String enquiryStatus) {
		return enquiryFindRepo.countByEnquiryStatus(enquiryStatus);
	}

}
