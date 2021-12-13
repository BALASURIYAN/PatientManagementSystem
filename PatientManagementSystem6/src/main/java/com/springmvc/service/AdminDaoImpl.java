package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.model.Admin;
import com.springmvc.repository.AdminRepositoty;

@Service
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	AdminRepositoty ar;
	
	@Override
	public void addAdmin(Admin admin)
	{
	    	ar.save(admin);
	}
	
	@Override
	public List<Admin> getAllAdmin()
	{
		List<Admin> adminList=ar.findAll();
		return adminList;
	}

}
