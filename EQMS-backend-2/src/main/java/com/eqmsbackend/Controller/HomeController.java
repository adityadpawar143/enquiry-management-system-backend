package com.eqmsbackend.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eqmsbackend.Classes.Enquiry;
import com.eqmsbackend.Classes.User;
import com.eqmsbackend.Service.EnquiryService;
import com.eqmsbackend.Service.SuperAdminService;

@Controller
public class HomeController {
	@Autowired
	SuperAdminService superAdminService;

	@Autowired
	EnquiryService enquiryService;

	@GetMapping("/")
	public String index(Model m) {
		List<Enquiry> E1 = enquiryService.list_enquiry();
		m.addAttribute("enquiry", E1);

		return "index";
	}

	@PostMapping("/checkLogin")
	public String check(ModelMap m, @RequestParam String userEmail, @RequestParam String userPassword,
			String userType) {
		try {

			if (userEmail.equals("admin@gmail.com") && userPassword.equals("aditya")) {
				m.put("userEmail", userEmail);
				return "redirect:/dashboard_super_admin";
			}

			User u = superAdminService.get_user(userEmail, userPassword);
			
			if (u != null && "L1-Member".equals(u.getUserType()))
			{
				return "redirect:/dashboard_L1";
			}
			if (u != null && "L2-Member".equals(u.getUserType()))
			{
				return "redirect:/dashboard_L2";
			}
			if (u != null && "L3-Member".equals(u.getUserType()))
			{
				return "redirect:/dashboard_L3";
			}
			else
			{
				return "redirect:/dashboard_admin";
			}

		} 	
		catch (Exception e) {
				// TODO: handle exception
					e.printStackTrace();
			}
		return "redirect:/";
	}

}
