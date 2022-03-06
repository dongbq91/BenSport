package com.bensport.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.bensport.controller.CommonController;

@Controller
public class IndexAdminController extends CommonController{

	@GetMapping(value = "/admin/home")
	public String index() {
		
		return "admin/index";
	}
}
