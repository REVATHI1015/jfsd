package com.klef.jfsd.farmtoglobal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.klef.jfsd.farmtoglobal.model.Farmer;
import com.klef.jfsd.farmtoglobal.repository.FarmerRepository;

@Service
public class FarmerServiceImpl implements FarmerService {

    @Autowired
    private FarmerRepository farmerRepository;

    @Override
    public String farmerRegistration(Farmer farmer) {
        farmerRepository.save(farmer);
        return "Farmer registered successfully!";
    }

    @Override
    public Farmer checkFarmerLogin(String email, String password) {
        return farmerRepository.checkFarmerLogin(email, password);
    }

}
