package com.springmvc.service;

import java.util.List;

import com.springmvc.model.Admin;

public interface AdminDao {
	
	public void addAdmin(Admin admin);
	public List<Admin> getAllAdmin();

}
