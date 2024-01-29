package com.jsp.foodapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.AdminDao;
import com.jsp.foodapp.entities.Admin;

@Controller
public class AdminController {
	@Autowired
	AdminDao admindao;
	
	@RequestMapping("/addadmin")
    public ModelAndView m1(){
    	ModelAndView mav= new ModelAndView("adminloginform");
    	Admin a= new Admin();
    	a.setEmail("admin");
    	a.setPassword("admin");
    	admindao.saveAdmin(a);
    	return mav;
     }
	@RequestMapping("/validate")
	public ModelAndView login(HttpServletRequest req) {
		
		String email = req.getParameter("email");
		String password=req.getParameter("password");
	    Admin admin=admindao.fetchAdminByEmailAndPassword(email , password);
	
			if(admin !=null) {
				ModelAndView mav= new ModelAndView("adminoptions");
				return mav;
			}else {
				ModelAndView mav= new ModelAndView("adminloginform");
				mav.addObject("msg","invalid credentials");
				return mav;
			}
		}
	
}