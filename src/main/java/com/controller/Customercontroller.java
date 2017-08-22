package com.controller;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Customer;
import com.model.User;
import com.service.Customerservice;

@Controller
public class Customercontroller {
	 
	private Customerservice customerService;
	    @Autowired
	    //@Qualifier("clientService")
	    public void setCustomerservice(Customerservice customerService){
	        this.customerService=customerService;
	    }
	
@RequestMapping("/all/registrationform")
public String getRegistrationForm(Model model){
	model.addAttribute("customer",new Customer());
	return "registrationpage";
}
@RequestMapping("all/register")
public String registerCustomer(@Valid @ModelAttribute(name="customer") Customer customer,BindingResult result,Model model){
	if(result.hasErrors())
		return "registrationpage"; //nonempty values..
	List<Customer> customers= customerService.getCustomers();
	String username=(String) customer.getUser();
	String email=customer.getEmail();
	for(Customer c:customers){
		User User = null;
	//  data in users table               input
	   if(((Object) c.getUsers(User)).equals(username))
	   {
		   model.addAttribute("duplicateUsername","Username already exists");
		   return "registrationpage";
	   }
	}
	for(Customer c:customers){
		   if(c.getEmail().equals(email))
		   {
			   model.addAttribute("duplicateEmail","EmailId already exists");
			   return "registrationpage";
		   }
		}
	customerService.saveCustomer(customer);
	
	return "login";
}
}
