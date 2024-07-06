package com.eqmsbackend.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eqmsbackend.Classes.Enquiry;

@Repository
public interface EnquiryRepository extends JpaRepository<Enquiry,Integer>{

}
