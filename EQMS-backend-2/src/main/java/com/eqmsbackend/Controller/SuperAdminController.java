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

import com.eqmsbackend.Classes.Content;
import com.eqmsbackend.Classes.Product;
import com.eqmsbackend.Classes.Section;
import com.eqmsbackend.Classes.Settings;
import com.eqmsbackend.Classes.User;
import com.eqmsbackend.Service.EnquiryService;
import com.eqmsbackend.Service.SuperAdminService;

@Controller
public class SuperAdminController 
{
	@Autowired
	SuperAdminService superAdminService;
	
	@Autowired
	EnquiryService enquiryService;
	
	@GetMapping("/dashboard_super_admin")
	public String dashboard_super_admin(Model m)
	{
		long allusers = superAdminService.totalUsers();
		m.addAttribute("allusers", allusers);
		
		long allproducts = superAdminService.totalProducts();
		m.addAttribute("allproducts", allproducts);
		
		long allequiries = enquiryService.total_enquiries();
		m.addAttribute("allequiries", allequiries);
		
		long allsettings = superAdminService.totalSettings();
		m.addAttribute("allsettings", allsettings);
		
		List<Settings> s1 = superAdminService.setting_list();
		m.addAttribute("settingList", s1);
		return "dashboard_super_admin";
	}
	 
	// Setting 
	
	@GetMapping("/setting")
	public String setting()
	{
		return "setting";
	}
	
	@PostMapping("/addSetting")
	public String add_setting(@ModelAttribute("setting") Settings setting)
	{
		superAdminService.add_setting(setting);
		return "redirect:/dashboard_super_admin";
	}
	
	@GetMapping("/dltOrganization")
	public String dltOrganization(@RequestParam("id") int id)
	{
		superAdminService.setting_dlt(id);
		return "redirect:/dashboard_super_admin";
	}
	
	
	// Section Master //
	
	@GetMapping("/section_master")
	public String section_master(Model m)
	{
		List<Section> s1 = superAdminService.section_list();
		m.addAttribute("s1", s1);
		return "section_master";
	}
	
	@PostMapping("/addSection")
	public String add_section(@ModelAttribute("section") Section section)
	{
		superAdminService.add_section(section);
		return "redirect:/section_master";
	}
	
	@GetMapping("/section_delete")
	public String section_delete(@RequestParam("id") int id)
	{
		superAdminService.section_dlt(id);
		return "redirect:/section_master";
	}
	
	@GetMapping("/section_edit")
	public String section_edit(@RequestParam("id") int id, ModelMap m)
	{
		Section SS = superAdminService.section_edit(id);
		m.addAttribute("section", SS);
		
		List<Section> s1 = superAdminService.section_list();
		m.addAttribute("s1", s1);
		
		return "section_edit";
	}
	
	
	
	// Content Master 
	
	@GetMapping("/content_master")
	public String content_master(Model m)
	{
		List<Content> c1 = superAdminService.content_list();
		m.addAttribute("CL", c1);
		return "content_master";
	}
	
	@GetMapping("/add_content_master")
	public String add_content_master(Model m)
	{
		List<Section> s1 = superAdminService.section_list();
		m.addAttribute("sectionlist", s1);
		
		return "add_content_master";
	}
	
	@PostMapping("/addContent")
	public String add_content(@ModelAttribute("content") Content content)
	{
		superAdminService.add_content(content);
		return "redirect:/content_master";
	}
	
	@GetMapping("/content_delete")
	public String content_delete(@RequestParam("id") int id)
	{
		superAdminService.content_dlt(id);
		return "redirect:/content_master";
	}
	
	@GetMapping("/content_edit")
	public String content_edit(@RequestParam("id") int id, ModelMap m)
	{
		Content CC = superAdminService.content_edit(id);
		m.addAttribute("content", CC);
		
		List<Section> s1 = superAdminService.section_list();
		m.addAttribute("sectionlist", s1);
		
		return "content_edit";
	}
	
	
	
	// User Master
	
	@GetMapping("/search_user_super_admin")
	public String search_user_super_admin(Model m)
	{
		List<User> u1 = superAdminService.user_list();
		m.addAttribute("userList", u1);
		return "search_user_super_admin";
	}
	
	@GetMapping("/add_user_super_admin")
	public String add_user_super_admin(Model m)
	{
		List<Settings> u1 = superAdminService.setting_list();
		m.addAttribute("companyList", u1);
		return "add_user_super_admin";
	}
	
	@PostMapping("/addUserSuperAdmin")
	public String add_user(@ModelAttribute("user") User user)
	{
		superAdminService.add_user(user);
		return "redirect:/search_user_super_admin";
	}
	
	@GetMapping("/user_delete")
	public String user_delete(@RequestParam("id") int id)
	{
		superAdminService.user_dlt(id);
		return "redirect:/search_user_super_admin";
	}
	
	@GetMapping("/user_edit_super_admin")
	public String user_edit(@RequestParam("id") int id, ModelMap m)
	{
		User U = superAdminService.user_edit(id);
		m.addAttribute("user", U);
		
		List<Settings> u1 = superAdminService.setting_list();
		m.addAttribute("companyList", u1);
		return "user_edit_super_admin";
	}

	
	// Product Master
	
	@GetMapping("/search_product_super_admin")
	public String search_product_super_admin(Model m)
	{
		List<Product> p1 = superAdminService.product_list();
		m.addAttribute("productList", p1);
		return "search_product_super_admin";
	}
	
	@GetMapping("/add_product_super_admin")
	public String add_product_super_admin()
	{
		return "add_product_super_admin";
	}
	
	@PostMapping("/addProduct")
	public String add_product(@ModelAttribute("product") Product product)
	{
		superAdminService.add_product(product);
		return "redirect:/search_product_super_admin";
	}
	
	@GetMapping("/product_delete")
	public String product_delete(@RequestParam("id") int id)
	{
		superAdminService.product_dlt(id);
		return "redirect:/search_product_super_admin";
	}
	
	@GetMapping("/product_edit_super_admin")
	public String product_edit(@RequestParam("id") int id, ModelMap m)
	{
		Product P = superAdminService.product_edit(id);
		m.addAttribute("product", P);
		
		return "product_edit_super_admin";
	}
	
	
	

	@GetMapping("/logout_super_admin")
	public String logout_super_admin()
	{
		return "redirect:/";
	}
}
