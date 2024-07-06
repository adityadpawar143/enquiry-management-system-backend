package com.eqmsbackend.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eqmsbackend.Classes.Content;
import com.eqmsbackend.Classes.Product;
import com.eqmsbackend.Classes.Section;
import com.eqmsbackend.Classes.Settings;
import com.eqmsbackend.Classes.User;
import com.eqmsbackend.Repository.ContentRepository;
import com.eqmsbackend.Repository.ProductRepository;
import com.eqmsbackend.Repository.SectionRepository;
import com.eqmsbackend.Repository.SettingRepository;
import com.eqmsbackend.Repository.UserRepository;
import com.eqmsbackend.Repository.userFindRepository;
import com.eqmsbackend.Service.SuperAdminService;

@Service
public class SuperAdminDao implements SuperAdminService
{
	@Autowired
	SettingRepository settingRepository;
	
	@Autowired
	SectionRepository sectionRepository;

	@Autowired
	ContentRepository contentRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	userFindRepository userFindRepo;
	
	@Autowired
	ProductRepository productRepository;
	
	
	
	
	// Setting 
	
	@Override
	public void add_setting(Settings S) 
	{
		settingRepository.save(S);	
	}

	@Override
	public List<Settings> setting_list() {
		return settingRepository.findAll();
	}


	@Override
	public void setting_dlt(int id) {
		settingRepository.deleteById(id);
	}


	@Override
	public Settings setting_edit(int id) {
		return settingRepository.getById(id);
	}
	
	@Override
	public long totalSettings() {
		return settingRepository.count();
	}

	
	
	
	// Section Master
	
	@Override
	public void add_section(Section section) 
	{
		sectionRepository.save(section);
	}

	@Override
	public List<Section> section_list() {
		return sectionRepository.findAll();
	}

	@Override
	public void section_dlt(int id) {
		sectionRepository.deleteById(id);
	}

	@Override
	public Section section_edit(int id) {
		Section section = sectionRepository.getById(id);
		return section;
	}

	
	
	// Content Master

	@Override
	public void add_content(Content content) {
		contentRepository.save(content);
	}

	@Override
	public List<Content> content_list() {
		return contentRepository.findAll();
	}

	@Override
	public void content_dlt(int id) {
		contentRepository.deleteById(id);
		
	}

	@Override
	public Content content_edit(int id) {
		Content content = contentRepository.getById(id);
		return content;
	}


	// User Master
	
	
	@Override
	public void add_user(User user) 
	{
		userRepository.save(user);
		
	}
	
	@Override
	public User get_user(String userEmail, String userPassword) {
		User b = userFindRepo.findByUserEmail(userEmail);
		if(b==null || !b.getUserPassword().equals(userPassword))
		{
			throw new IllegalArgumentException("Invalid");
		}
		return b;
	}

	@Override
	public User getUserbyType(String userType) {
		User u = userFindRepo.findByUserType(userType);
		if(u==null || !u.getUserType().equals(userType))
		{
			throw new IllegalArgumentException("Invalid");
		}
		return u;
	}
	
	
	@Override
	public List<User> user_list() {
		return userRepository.findAll();
	}

	@Override
	public void user_dlt(int id) {
		userRepository.deleteById(id);
		
	}

	@Override
	public User user_edit(int id) {
		User user = userRepository.getById(id);
		return user;
	}

	@Override
	public long totalUsers() {
		return userRepository.count();
	}
	
	
	
	// Product Master
	
	
	@Override
	public void add_product(Product product) {
		productRepository.save(product);
	}

	@Override
	public List<Product> product_list() {
		return productRepository.findAll();
	}

	@Override
	public void product_dlt(int id) {
		productRepository.deleteById(id);
	}

	@Override
	public Product product_edit(int id) {
		return productRepository.getById(id);
	}

	@Override
	public long totalProducts() {
		return productRepository.count();
	}

	

	

	
	


	
	
}
