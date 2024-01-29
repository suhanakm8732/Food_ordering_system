package com.jsp.foodapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.foodapp.dao.ProductDao;
import com.jsp.foodapp.entities.FoodOrder;
import com.jsp.foodapp.entities.Item;
import com.jsp.foodapp.entities.Product;

@Controller
public class ItemController {
	
	@Autowired
	ProductDao pd;
	
	@RequestMapping("additem")
	public ModelAndView addItem(@RequestParam("id")int id)
	{
		ModelAndView mav=new ModelAndView("additems");
		Product product=pd.findProductById(id);
		Item item=new Item();
		item.setName(product.getName());
		item.setCost(product.getCost());
		
		mav.addObject("item",item);
		return mav;
	}
	
	@RequestMapping("saveitem")
	public ModelAndView saveItem(@ModelAttribute("item")Item item,HttpSession session)
	{
		item.setCost(item.getQuantity()*item.getCost());
		FoodOrder fo=(FoodOrder)session.getAttribute("foodorder");
		List<Item> items=fo.getItems();
		item.setFoodorders(fo);
		if(items!=null)
		{
			items.add(item);
			fo.setItems(items);
		}
		else
		{
			List<Item> items1=new ArrayList<Item>();
			items1.add(item);
			fo.setItems(items1);
		}
		ModelAndView mav=new ModelAndView("redirect:/viewallproduct");
		return mav;
	}
}