package com.klef.jfsd.farmtoglobal.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.farmtoglobal.model.Admin;
import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.model.Farmer;
import com.klef.jfsd.farmtoglobal.repository.AdminRepository;
import com.klef.jfsd.farmtoglobal.repository.CustomerRepository;
import com.klef.jfsd.farmtoglobal.repository.FarmerRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired  
    private AdminRepository adminRepository;

    @Autowired  
    private FarmerRepository farmerRepository;  // Make sure to include this

    @Override
    public List<Customer> viewAllCustomers() {
        return customerRepository.findAll();
    }

    @Override
    public Admin checkAdminLogin(String uname, String pwd) {
        return adminRepository.checkAdminLogin(uname, pwd);
    }

    @Override
    public List<Farmer> viewAllFarmers() {
        return farmerRepository.findAll(); 
    }
}
