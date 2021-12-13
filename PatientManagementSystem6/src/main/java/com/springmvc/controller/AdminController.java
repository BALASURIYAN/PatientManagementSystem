package com.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.model.Admin;
import com.springmvc.model.AdminCredentials;
import com.springmvc.service.AdminDao;

@Controller
public class AdminController {
	
	@Autowired
	Admin admin;
	
	@Autowired
	AdminDao adminDao;
	
	@Autowired
	AdminCredentials admincredentials;
	
	
	@RequestMapping("adminregistration")
	public String adminRegistrationPage(Model m)
	{
		m.addAttribute("admin", admin);
		return "adminregistrationpage";
	}
	
	
	@RequestMapping("adminregister")
	public String adminRegister(@ModelAttribute("admin") Admin admin)
	{
		adminDao.addAdmin(admin);
		System.out.println(admin);
		return "adminregistrationsuccess";
	}
	
	
	@RequestMapping("adminlogin")
	public String adminLoginPage(Model m)
	{
		m.addAttribute("admincredentials", admincredentials);
		return "adminlogin";
	}
	
	@RequestMapping("validate")
	public String validation(@ModelAttribute("admincredentials") AdminCredentials a)
	{
		
		List<Admin> listOfAdmins=adminDao.getAllAdmin();
		
		for(Admin admin:listOfAdmins)
		{
			if(a.getUsername().equals(admin.getUsername()) && a.getPassword().equals(admin.getPassword()))
			{
				System.out.println("Username and password matched!");
				return "loginsuccesspage";
			}
		}
		
			return "loginfailurepage";
	}
	
	
	@RequestMapping("adminlogout")
	public String adminLogout(Model m)
	{
		m.addAttribute("admin",new Admin());
	   return "redirect:/adminlogin";
	}

}
