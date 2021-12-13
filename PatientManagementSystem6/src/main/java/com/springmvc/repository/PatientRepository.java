package com.springmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springmvc.model.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient,Integer> {

}
