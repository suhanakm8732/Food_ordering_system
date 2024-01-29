package com.jsp.foodapp.controller;

import javax.persistence.metamodel.SetAttribute;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.UserDao;
import com.jsp.foodapp.entities.Product;
import com.jsp.foodapp.entities.User;

@Controller
public class UserController {
	@Autowired
	UserDao dao;
	
    @RequestMapping("/adduser")
    public ModelAndView addUser() {
    	ModelAndView mav = new ModelAndView("adduserform");
    	User u = new User();
    	mav.addObject("user",u);
    	return mav;
    }
    @RequestMapping("/saveuser")
    public ModelAndView saveUser(@ModelAttribute("user") User u) {
    	ModelAndView mav = new ModelAndView("adminoptions");
    	dao.saveUser(u);
    	mav.addObject("msg", "user saved succesfully");
    	return mav;
   }
   @RequestMapping("/validateuser")
    public ModelAndView loginuser( HttpServletRequest req) {
    	String email=req.getParameter("email");
    	String password=req.getParameter("password");
    	User user=dao.findUserByEmailPassword(email, password);
    	
        if (user != null) {
            ModelAndView mav = new ModelAndView("useroptions");
            HttpSession hs=req.getSession();
            hs.setAttribute("user",user); 
            return mav;
        } else {
            ModelAndView mav = new ModelAndView("loginuserform");
            mav.addObject("msg", "Invalid credentials");
            return mav;
        }
     }
    
    @RequestMapping("/viewprofile")
    public ModelAndView viewProfile(HttpSession session)
    {
    	User user=(User)session.getAttribute("user");
    	ModelAndView mav=new ModelAndView("viewprofile");
    	mav.addObject("user",user);
    	return mav;
    	
    }
    
    @RequestMapping("/editprofile")
    public ModelAndView editProfile(HttpSession session)
    {
    	User user=(User)session.getAttribute("user");
    	ModelAndView mav=new ModelAndView("updateprofile");
    	mav.addObject("user",user);
    	return mav;
    	
    }
    @RequestMapping("/updateprofile")
    public ModelAndView updateProduct(@ModelAttribute("user") User user) {
        ModelAndView mav = new ModelAndView("viewprofile");
        dao.updateUser(user);
        return mav;
    }
}