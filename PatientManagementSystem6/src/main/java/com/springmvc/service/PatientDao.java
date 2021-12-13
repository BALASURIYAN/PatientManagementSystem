package com.springmvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springmvc.model.Patient;

	
	@Service
	public interface PatientDao {

		public void addPatient(Patient patient);
		public List<Patient> getAllPatient();
		public Patient getPatientById(int id);
		public void updatePatient(Patient patient);
		public void deletePatient(int id);
		//public Patient validateUser(Patient patient);
	}


