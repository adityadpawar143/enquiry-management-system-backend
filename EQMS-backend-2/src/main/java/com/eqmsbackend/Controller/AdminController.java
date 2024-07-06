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
import com.eqmsbackend.Classes.Settings;
import com.eqmsbackend.Classes.User;
import com.eqmsbackend.Service.EnquiryService;
import com.eqmsbackend.Service.SuperAdminService;

@Controller
public class AdminController 
{
	@Autowired
	SuperAdminService superAdminService;
	
	@Autowired
	EnquiryService enquiryService;
	
	
	
	@GetMapping("/dashboard_admin")
	public String dashboard_admin(Model m)
	{
		long totalenquiries = enquiryService.total_enquiries();
		m.addAttribute("totalenquiries", totalenquiries);
		
		long totalEnquiriesStatusOpen = enquiryService.total_enquiries_status("Open");
		m.addAttribute("totalEnquiriesStatusOpen", totalEnquiriesStatusOpen);
		
		long totalEnquiriesStatusInProcess = enquiryService.total_enquiries_status("In Process");
		m.addAttribute("totalEnquiriesStatusInProcess", totalEnquiriesStatusInProcess);
		
		long totalEnquiriesStatusClosed = enquiryService.total_enquiries_status("Closed");
		m.addAttribute("totalEnquiriesStatusClosed", totalEnquiriesStatusClosed);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "dashboard_admin";
	}


	
	// User Master
	
	
	@GetMapping("/search_user_admin")
	public String search_user_admin(Model m)
	{
		List<User> u1 = superAdminService.user_list();
		m.addAttribute("userList", u1);
		return "search_user_admin";
	}
	
	@GetMapping("/add_user_admin")
	public String add_user_admin(Model m)
	{
		List<Settings> u1 = superAdminService.setting_list();
		m.addAttribute("companyList", u1);
		return "add_user_admin";
	}
	
	@PostMapping("/addUserAdmin")
	public String add_user(@ModelAttribute("user") User user)
	{
		superAdminService.add_user(user);
		return "redirect:/search_user_admin";
	}
	
	@GetMapping("/user_delete_admin")
	public String user_delete_admin(@RequestParam("id") int id)
	{
		superAdminService.user_dlt(id);
		return "redirect:/search_user_admin";
	}
	
	@GetMapping("/user_edit_admin")
	public String user_edit_admin(@RequestParam("id") int id, ModelMap m)
	{
		User U = superAdminService.user_edit(id);
		m.addAttribute("user", U);
		List<Settings> u1 = superAdminService.setting_list();
		m.addAttribute("companyList", u1);
		return "user_edit_admin";
	}

	
	//Product Master
	
	@GetMapping("/search_product_admin")
	public String search_product_admin(Model m)
	{
		List<Product> p1 = superAdminService.product_list();
		m.addAttribute("productList", p1);
		return "search_product_admin";
	}
	
	@GetMapping("/add_product_admin")
	public String add_product_admin()
	{
		return "add_product_admin";
	}
	
	@PostMapping("/addProductAdmin")
	public String add_product_admin(@ModelAttribute("product") Product product)
	{
		superAdminService.add_product(product);
		return "redirect:/search_product_admin";
	}
	
	@GetMapping("/product_delete_admin")
	public String product_delete_admin(@RequestParam("id") int id)
	{
		superAdminService.product_dlt(id);
		return "redirect:/search_product_admin";
	}
	
	@GetMapping("/product_edit_admin")
	public String product_edit_admin(@RequestParam("id") int id, ModelMap m)
	{
		Product P = superAdminService.product_edit(id);
		m.addAttribute("product", P);
		
		return "product_edit_admin";
	}
	
	
	
	
	// Enquiry
	
	
	@GetMapping("/add_enquiry_admin")
	public String add_enquiry_admin(Model m)
	{
		List<Product> P1 = superAdminService.product_list();
		m.addAttribute("P1", P1);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		
		return "add_enquiry_admin";
	}
	
	@PostMapping("/addEnquiryAdmin")
	public String addEnquiryAdmin(@ModelAttribute("enquiry") Enquiry enquiry)
	{
		enquiryService.add_enquiry(enquiry);
		return "redirect:/follow_up_admin";
	}
	
	@GetMapping("/follow_up_admin")
	public String follow_up_admin(Model m)
	{
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		
		return "follow_up_admin";
	}
	
	@GetMapping("/follow_up_action_admin")
	public String follow_up_action_admin(@RequestParam("id") int id, ModelMap m)
	{
		Enquiry EE = enquiryService.edit_enquiry(id);
		m.addAttribute("getEnquiry", EE);
		
		List<Product> P1 = superAdminService.product_list();
		m.addAttribute("P1", P1);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		
		return "follow_up_action_admin";
	}
	
	@PostMapping("/addEnquiryFollowUpAdmin")
	public String addEnquiryFollowUpAdmin(@ModelAttribute("enquiry") Enquiry enquiry)
	{
		enquiryService.add_enquiry(enquiry);
		return "redirect:/dashboard_admin";
	}
	
	
	@GetMapping("/follow_up_view_admin")
	public String follow_up_view_admin(@RequestParam("id") int id, ModelMap m)
	{
		Enquiry EE = enquiryService.edit_enquiry(id);
		m.addAttribute("getEnquiry", EE);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "follow_up_view_admin";
	}
	
	
	
	@GetMapping("/enquiry_assign_admin")
	public String enquiry_assign_admin(@RequestParam("id") int id, ModelMap m)
	{
		Enquiry EE = enquiryService.edit_enquiry(id);
		m.addAttribute("getEnquiry", EE);
		
		List<User> u1 = superAdminService.user_list();
		m.addAttribute("userList", u1);
		
		List<Product> P1 = superAdminService.product_list();
		m.addAttribute("P1", P1);
		
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "enquiry_assign_admin";
	}
	
	@PostMapping("/addEnquiryAssignAdmin")
	public String addEnquiryAssignAdmin(@ModelAttribute("enquiry") Enquiry enquiry)
	{
		enquiryService.add_enquiry(enquiry);
		return "redirect:/dashboard_admin";
	}
	
	
	
	// Report
	
	@GetMapping("/enquiry_report_admin")
	public String enquiry_report_admin(Model m)
	{
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "enquiry_report_admin";
	}
	
	@GetMapping("/enquiry_report_memberwise_admin")
	public String enquiry_report_memberwise_admin(Model m)
	{
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);
		return "enquiry_report_memberwise_admin";
	}
	
	
	
	
	
	
	
	
	@GetMapping("/logout_admin")
	public String logout_admin()
	{
		return "redirect:/";
	}
}
