package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.model.Patient;
import com.springmvc.repository.PatientRepository;

@Service
public class PatientDaoImpl implements PatientDao 
{
	@Autowired
	PatientRepository patientRepository;
	
	@Override
	public void addPatient(Patient patient) {
		// TODO Auto-generated method stub
		patientRepository.save(patient);
	}

	@Override
	public List<Patient> getAllPatient() {
		
		List<Patient> patientList =  patientRepository.findAll();
		return patientList;
	}

	@Override
	public Patient getPatientById(int id) {
		// TODO Auto-generated method stub
		Patient patient = patientRepository.getById(id);
		return patient;
	}

	@Override
	public void updatePatient(Patient patient) {
		// TODO Auto-generated method stub
		patientRepository.save(patient);

	}

	@Override
	public void deletePatient(int id) {
		// TODO Auto-generated method stub
		patientRepository.deleteById(id);
	}

	/*@Override
	public Patient validateUser(Patient patient) {
		// TODO Auto-generated method stub
		Patient user1 = patientRepository.findByLoginData(patient.getUserName(), patient.getUserPassword());
		return user1;
	}*/
}
