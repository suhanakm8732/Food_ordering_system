package com.jsp.foodapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.ProductDao;
import com.jsp.foodapp.entities.Product;

@Controller
public class ProductController {
    @Autowired
    ProductDao productdao;
    
      @RequestMapping("/addproduct")
    public ModelAndView m1() {
    	ModelAndView mav=new ModelAndView("addproduct");
    	Product p = new Product();
    	mav.addObject("product", p);
		return mav;
    }
      @RequestMapping("/saveproduct")
      public ModelAndView saveProduct(@ModelAttribute("product")Product p) {
    	ModelAndView mav = new ModelAndView("adminoptions"); 
    	productdao.saveProduct(p);
    	return mav;
    	 }
      @RequestMapping("/viewallproducts")
      public ModelAndView viweAllProducts() {
    	  ModelAndView mav = new ModelAndView("allproducts");
    	  List<Product> products=productdao.fetchAllProducts();
    	  mav.addObject("productlist", products);
		return mav;
      }
     @RequestMapping("/update")
      public ModelAndView update(@RequestParam("id") int id) {
    	 ModelAndView mav = new ModelAndView("updateproduct");
    	    Product p = productdao.findProductById(id);
    	    mav.addObject("product", p);
    	    return mav;
      }
    @RequestMapping("/updateproduct")
     public ModelAndView updateProduct(@ModelAttribute("product") Product product) {
         ModelAndView mav = new ModelAndView("adminoptions");
         productdao.updateProduct(product);
         return mav;
     }
   
     @RequestMapping("/delete")
    public ModelAndView deleteProduct(@RequestParam("id") int id) {
        ModelAndView mav = new ModelAndView("redirect:/viewallproducts");
        Product product = productdao.findProductById(id);
        productdao.deleteProduct(product);
        return mav;
    }
     @RequestMapping("/viewallproduct")
     public ModelAndView orderfood() {
   	  ModelAndView mav = new ModelAndView("displayallproducts");
   	  List<Product> products=productdao.fetchAllProducts();
   	  mav.addObject("productlist", products);
		return mav;
     }
    
}