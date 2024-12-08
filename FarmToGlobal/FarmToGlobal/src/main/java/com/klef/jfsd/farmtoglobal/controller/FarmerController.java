package com.klef.jfsd.farmtoglobal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.farmtoglobal.model.Farmer;
import com.klef.jfsd.farmtoglobal.service.FarmerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FarmerController 
{
    @Autowired
    private FarmerService farmerService;

    @GetMapping("/farmerreg")
    public ModelAndView farmerreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerreg");
        return mv;
    }
    
    @GetMapping("/farmerhome")
    public ModelAndView farmerhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerhome");
        return mv;
    }

    @GetMapping("/farmerlogin")
    public ModelAndView farmerlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerlogin");
        return mv;
    }

    @PostMapping("insertfarmer")
    public ModelAndView insertfarmer(HttpServletRequest request) {
        String name = request.getParameter("fname");
        String gender = request.getParameter("fgender");
        String dob = request.getParameter("fdob");
        String email = request.getParameter("femail");
        String location = request.getParameter("flocation");
        String contact = request.getParameter("fcontact");
        String password = request.getParameter("fpwd");
        String company = request.getParameter("fcname");
        
        Farmer farmer = new Farmer();
        farmer.setName(name);
        farmer.setGender(gender);
        farmer.setDateofbirth(dob);
        farmer.setEmail(email);
        farmer.setLocation(location);
        farmer.setContact(contact);
        farmer.setPassword(password);
        farmer.setCompany(company);
        
        String message = farmerService.farmerRegistration(farmer);
        
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerregsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @PostMapping("checkfarmerlogin")
    public ModelAndView checkfarmerlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String femail = request.getParameter("femail");
        String fpwd = request.getParameter("fpwd");
        Farmer farmer = farmerService.checkFarmerLogin(femail, fpwd);
        request.getSession().setAttribute("Farmer", farmer);
        if (farmer != null) {
            mv.setViewName("farmerhome");
        } else {
            mv.setViewName("farmerloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }
    
    

   
}
