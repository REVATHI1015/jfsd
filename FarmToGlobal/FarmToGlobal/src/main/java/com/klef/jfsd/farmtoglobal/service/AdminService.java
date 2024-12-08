package com.klef.jfsd.farmtoglobal.service;

import java.util.List;

import com.klef.jfsd.farmtoglobal.model.Admin;
import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.model.Farmer;

public interface AdminService 
{
	public List<Customer> viewAllCustomers();
	public List<Farmer> viewAllFarmers();
	public Admin checkAdminLogin(String uname,String pwd);
}

