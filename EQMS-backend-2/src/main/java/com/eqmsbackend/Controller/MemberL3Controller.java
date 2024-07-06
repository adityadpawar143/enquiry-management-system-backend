package com.eqmsbackend.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eqmsbackend.Classes.Enquiry;
import com.eqmsbackend.Classes.Product;
import com.eqmsbackend.Service.EnquiryService;
import com.eqmsbackend.Service.SuperAdminService;

@Controller
public class MemberL3Controller 
{
	@Autowired
	SuperAdminService superAdminService;
	
	
	@Autowired
	EnquiryService enquiryService;
	
	
	
	@GetMapping("/dashboard_L3")
	public String dashboard_L3(Model m)
	{
		List<Enquiry> E1 = enquiryService.enquiry_assignTo("L3-Member");
		m.addAttribute("enquiry", E1);
		return "dashboard_L3";
	}
	
	@GetMapping("/add_enquiry_L3")
	public String add_enquiry_L3(Model m)
	{
		List<Product> P1 = superAdminService.product_list();
		m.addAttribute("P1", P1);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "add_enquiry_L3";
	}
	
	@PostMapping("/addEnquiryL3")
	public String addEnquiryL3(@ModelAttribute("enquiry") Enquiry enquiry)
	{
		enquiryService.add_enquiry(enquiry);
		return "redirect:/dashboard_L3";
	}
	
	@GetMapping("/logout_L3")
	public String logout_L3()
	{
		return "redirect:/";
	}
	
}
