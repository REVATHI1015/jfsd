package com.klef.jfsd.farmtoglobal.service;

import com.klef.jfsd.farmtoglobal.model.Customer;

public interface CustomerService 
{
	public  String customerRegistration(Customer customer );
	public Customer checkCustomerLogin(String email,String password);
}
