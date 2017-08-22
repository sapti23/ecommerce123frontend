package com.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/cart")
public class Cartcontroller{
	@RequestMapping
	public String get(HttpServletRequest request){
		return
		"redirect:/cart/"+	request.getSession(true).getId();
	}
	@RequestMapping(value="/{cartid}",method=RequestMethod.GET)
    public String getcart(@PathVariable(value="cartid")String cartId,Model model){
		model.addAttribute("cartId",cartId);
		return "cart";
	}
}