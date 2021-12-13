package com.springmvc.model;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.*;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Entity
@Table(name="patientdetails")
@Component
public class Patient {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private Integer id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="consultation")
	private String consultation;
	
	@Column(name="doctorName")
	private String doctorName;
	
	@Column(name="date")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date date;
	
	
	
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Patient(int id, String name, String gender, String consultation, String doctorName, Date date) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.consultation = consultation;
		this.doctorName = doctorName;
		this.date = date;
	}

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getConsultation() {
		return consultation;
	}


	public void setConsultation(String consultation) {
		this.consultation = consultation;
	}


	public String getDoctorName() {
		return doctorName;
	}


	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	@Override
	public String toString() {
		return "Patient [id=" + id + ", name=" + name + ", gender=" + gender + ", consultation=" + consultation
				+ ", doctorName=" + doctorName + ", date=" + date + "]";
	}


	
	
	

}
