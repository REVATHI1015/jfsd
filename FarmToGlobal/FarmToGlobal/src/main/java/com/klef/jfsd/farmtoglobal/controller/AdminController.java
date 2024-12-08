package com.klef.jfsd.farmtoglobal.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.farmtoglobal.model.Admin;
import com.klef.jfsd.farmtoglobal.model.Customer;
import com.klef.jfsd.farmtoglobal.model.Farmer;
import com.klef.jfsd.farmtoglobal.service.AdminService;


import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService; 

    @GetMapping("/adminlogin")
    public ModelAndView adminLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin");
        return mv;
    }
    
    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request)
    {
    	ModelAndView mv = new ModelAndView();
    	
    	String auname = request.getParameter("auname"); 
    	String apwd = request.getParameter("apwd"); 
    	
    	Admin admin = adminService.checkAdminLogin(auname, apwd);
    	
    	if(admin!=null)
    	{
    		mv.setViewName("/adminhome");
    	}
    	else
    	{
    		mv.setViewName("adminloginfail");
    		mv.addObject("message","Login Failed");
    	}
    	return mv;
    }
    
    @GetMapping("/viewallcustomers")
    public ModelAndView viewallcustomers() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallcustomers");
        List<Customer> customers = adminService.viewAllCustomers();
        mv.addObject("customerlist", customers);
        return mv;
    }
    
    @GetMapping("/viewallfarmers")
    public ModelAndView viewallfarmers() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallfarmers"); 
        List<Farmer> farmers = adminService.viewAllFarmers();
        mv.addObject("farmerlist", farmers);
        return mv;
    }
    
    
    
    


    
}