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
import com.eqmsbackend.Classes.User;
import com.eqmsbackend.Service.EnquiryService;
import com.eqmsbackend.Service.SuperAdminService;
@Controller
public class MemberL1Controller 
{
	@Autowired
	SuperAdminService superAdminService;
	
	@Autowired
	EnquiryService enquiryService;
	
	
	@GetMapping("/dashboard_L1")
	public String dashboard_L1(Model m)
	{
		long totalenquiries = enquiryService.total_enquiries();
		m.addAttribute("totalenquiries", totalenquiries);
		
		long totalEnquiriesStatusOpen = enquiryService.total_enquiries_status("Open");
		m.addAttribute("totalEnquiriesStatusOpen", totalEnquiriesStatusOpen);
		
		long totalEnquiriesStatusInProcess = enquiryService.total_enquiries_status("In Process");
		m.addAttribute("totalEnquiriesStatusInProcess", totalEnquiriesStatusInProcess);
		
		long totalEnquiriesStatusClosed = enquiryService.total_enquiries_status("Closed");
		m.addAttribute("totalEnquiriesStatusClosed", totalEnquiriesStatusClosed);
		
		List<Enquiry> E1 = enquiryService.enquiry_assignTo("L1-Member");
		m.addAttribute("enquiry", E1);
		return "dashboard_L1";
	}
	
	@GetMapping("/add_enquiry_L1")
	public String add_enquiry_L1(Model m)
	{
		List<Product> P1 = superAdminService.product_list();
		m.addAttribute("P1", P1);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		
		return "add_enquiry_L1";
	}
	
	@PostMapping("/addEnquiryL1")
	public String addEnquiryL1(@ModelAttribute("enquiry") Enquiry enquiry)
	{
		enquiryService.add_enquiry(enquiry);
		return "redirect:/follow_up_L1";
	}
	
	
	
	@GetMapping("/follow_up_L1")
	public String follow_up_L1(Model m)
	{
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "follow_up_L1";
	}
	
	@GetMapping("/follow_up_action_L1")
	public String follow_up_action_L1(@RequestParam("id") int id, ModelMap m)
	{
		Enquiry EE = enquiryService.edit_enquiry(id);
		m.addAttribute("getEnquiry", EE);
		
		List<Product> P1 = superAdminService.product_list();
		m.addAttribute("P1", P1);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		
		return "follow_up_action_L1";
	}
	
	@PostMapping("/addEnquiryFollowUpL1")
	public String addEnquiryFollowUpL1(@ModelAttribute("enquiry") Enquiry enquiry)
	{
		enquiryService.add_enquiry(enquiry);
		return "redirect:/dashboard_L1";
	}
	
	
	@GetMapping("/follow_up_view_L1")
	public String follow_up_view_L1(@RequestParam("id") int id, ModelMap m)
	{
		Enquiry EE = enquiryService.edit_enquiry(id);
		m.addAttribute("getEnquiry", EE);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "follow_up_view_L1";
	}
	
	@GetMapping("/enquiry_assign_L1")
	public String enquiry_assign_L1(@RequestParam("id") int id, ModelMap m)
	{
		Enquiry EE = enquiryService.edit_enquiry(id);
		m.addAttribute("getEnquiry", EE);
		
		List<User> u1 = superAdminService.user_list();
		m.addAttribute("userList", u1);
		
		List<Product> P1 = superAdminService.product_list();
		m.addAttribute("P1", P1);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "enquiry_assign_L1";
	}
	
	@PostMapping("/addEnquiryAssignL1")
	public String addEnquiryAssignL1(@ModelAttribute("enquiry") Enquiry enquiry)
	{
		enquiryService.add_enquiry(enquiry);
		return "redirect:/dashboard_L1";
	}
	
	// Report
	
		@GetMapping("/enquiry_report_L1")
		public String enquiry_report_L1(Model m)
		{
			List<Enquiry> E1 = enquiryService.list_enquiry();
			m.addAttribute("enquiry", E1);
			return "enquiry_report_L1";
		}
		
		@GetMapping("/enquiry_report_memberwise_L1")
		public String enquiry_report_memberwise_L1(Model m)
		{
			List<Enquiry> E1 = enquiryService.list_enquiry();
			m.addAttribute("enquiry", E1);
			return "enquiry_report_memberwise_L1";
		}	
	
	@GetMapping("/logout_L1")
	public String logout_L1()
	{
		return "redirect:/";
	}

}
