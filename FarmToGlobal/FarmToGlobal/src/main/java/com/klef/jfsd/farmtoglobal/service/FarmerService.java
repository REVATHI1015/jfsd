package com.klef.jfsd.farmtoglobal.service;

import java.util.List;

import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.model.Farmer;

public interface FarmerService 
{
	public  String farmerRegistration(Farmer farmer );
	public Farmer checkFarmerLogin(String email,String password);
	
}    

