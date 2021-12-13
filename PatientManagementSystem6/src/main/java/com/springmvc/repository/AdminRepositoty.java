package com.springmvc.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springmvc.model.Admin;

@Repository
public interface AdminRepositoty extends JpaRepository<Admin,String>
{

}
