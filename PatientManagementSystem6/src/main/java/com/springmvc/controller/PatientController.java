package com.springmvc.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.*;
import com.springmvc.model.AdminCredentials;
import com.springmvc.service.PatientDao;

import java.util.*;

@Controller
public class PatientController {
	
	@Autowired
	Patient patient;
	
	@Autowired
	PatientDao dao;
	
	
	@RequestMapping("/home")
	public String homePage()
	{
	   return "homepage";	
	}
	
	@RequestMapping("registration")
	public String registrationPage(Model model)
	{
	   model.addAttribute("patient",patient);
	   return "registrationpage";	
	}
	
	@RequestMapping("submitform")
	public String register(@ModelAttribute("patient") Patient patient)
	{
		System.out.println("Save in progress");
		dao.addPatient(patient);
		System.out.println(patient);
		return "registrationsuccess";
	}
	
	
	@RequestMapping("admincontrol")
	public String adminPage(Model model)
	{
		List<Patient> patientList=dao.getAllPatient();
		model.addAttribute("list", patientList);
		System.out.println(patientList);
		return "viewpatients";
	}
	
	
	@RequestMapping("getpatientform")
	public String getPatientForm() {
		return "getpatient";
	}
	
	@RequestMapping("getbyid/{id}")
	public ModelAndView getById(@PathVariable int id, ModelAndView mv) {
		System.out.println("id is "+id);
		Patient patient =dao.getPatientById(id);
		mv.addObject("patient", patient);
		mv.setViewName("showpatient");
		return mv;
	}
	
	@RequestMapping("updatepatient/{id}")
	public String getUpdatePatient(@PathVariable int id, Model m) {
		
		Patient patient = dao.getPatientById(id);
		System.out.println("In Controller : "+patient);
		m.addAttribute("patient",patient);
		return "updateform";
		
	}
	
	@RequestMapping("updatedetails")
	public String saveUpdate(@ModelAttribute("patient") Patient patient) 
	{
		System.out.println("Updation in progress for patient"+patient);
		dao.updatePatient(patient);
		System.out.println("Patient Details Updated!");
		return "redirect:/admincontrol";
		
	}
	
	@RequestMapping("deletepatient/{id}")
	public String deletePatient(@PathVariable int id) {
		dao.deletePatient(id);
		return "redirect:/admincontrol";
	}
	
	

}
