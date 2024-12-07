package com.klef.jfsd.farmtoglobal.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public String customerRegistration(Customer customer) {
        customerRepository.save(customer);
        return "Customer registered successfully!";
    }

    @Override
    public Customer checkCustomerLogin(String email, String password) {
        return customerRepository.checkCustomerLogin(email, password);
    }
}
