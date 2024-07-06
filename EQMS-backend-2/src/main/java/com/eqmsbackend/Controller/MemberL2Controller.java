package com.eqmsbackend.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eqmsbackend.Classes.Enquiry;
import com.eqmsbackend.Classes.Product;
import com.eqmsbackend.Service.EnquiryService;
import com.eqmsbackend.Service.SuperAdminService;

@Controller
public class MemberL2Controller 
{
	
	@Autowired
	SuperAdminService superAdminService;
	
	
	@Autowired
	EnquiryService enquiryService;
	
	
	
	@GetMapping("/dashboard_L2")
	public String dashboard_L2(Model m)
	{
		long totalenquiries = enquiryService.total_enquiries();
		m.addAttribute("totalenquiries", totalenquiries);
		
		List<Enquiry> E1 = enquiryService.enquiry_assignTo("L2-Member");
		m.addAttribute("enquiry", E1);
		return "dashboard_L2";
	}
	
	@GetMapping("/add_enquiry_L2")
	public String add_enquiry_L2(Model m)
	{
		List<Product> P1 = superAdminService.product_list();
		m.addAttribute("P1", P1);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		
		return "add_enquiry_L2";
	}
	
	@PostMapping("/addEnquiryL2")
	public String addEnquiryL2(@ModelAttribute("enquiry") Enquiry enquiry)
	{
		enquiryService.add_enquiry(enquiry);
		return "redirect:/dashboard_L2";
	}
	
	@GetMapping("/enquiry_report_L2")
	public String enquiry_report_L2(Model m)
	{
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "enquiry_report_L2";
	}
	
	@GetMapping("/followup_action_L2")
	public String followup_action_L2(@RequestParam("id") int id, ModelMap m)
	{
		Enquiry EE = enquiryService.edit_enquiry(id);
		m.addAttribute("getEnquiry", EE);
		
		List<Product> P1 = superAdminService.product_list();
		m.addAttribute("P1", P1);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "followup_action_L2";
	}
	
	@PostMapping("/addEnquiryFollowUpL2")
	public String addEnquiryFollowUpL2(@ModelAttribute("enquiry") Enquiry enquiry)
	{
		enquiryService.add_enquiry(enquiry);
		return "redirect:/dashboard_L2";
	}
	
	@GetMapping("/followup_view_L2")
	public String followup_view_L2(@RequestParam("id") int id, ModelMap m)
	{
		Enquiry EE = enquiryService.edit_enquiry(id);
		m.addAttribute("getEnquiry", EE);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "followup_view_L2";
	}
	
	@GetMapping("/logout_L2")
	public String logout_L2()
	{
		return "redirect:/";
	}

}
