package com.eqmsbackend.Service;

import java.util.List;

import com.eqmsbackend.Classes.Content;
import com.eqmsbackend.Classes.Product;
import com.eqmsbackend.Classes.Section;
import com.eqmsbackend.Classes.Settings;
import com.eqmsbackend.Classes.User;

public interface SuperAdminService 
{
	
	
	// Setting Master
	
	void add_setting(Settings S);
	
	List<Settings> setting_list();

	void setting_dlt(int id);
	
	Settings setting_edit(int id);
	
	long totalSettings();
	
	
	
	// Section Master
	
	void add_section(Section section);
	
	List<Section> section_list();

	void section_dlt(int id);
	
	Section section_edit(int id);
	
	
	
	// Content Master
	
	void add_content(Content content);
		
	List<Content> content_list();

	void content_dlt(int id);
		
	Content content_edit(int id);
	
	
	
	// User Master
	
	void add_user(User user);
			
	List<User> user_list();

	void user_dlt(int id);
			
	User user_edit(int id);
	
	long totalUsers();
	
	User get_user(String userEmail, String userPassword);
	
	User getUserbyType(String userType);
	
	
	
	// Product Master
	
	void add_product(Product product);
			
	List<Product> product_list();

	void product_dlt(int id);
			
	Product product_edit(int id);
	
	long totalProducts();
	
}
