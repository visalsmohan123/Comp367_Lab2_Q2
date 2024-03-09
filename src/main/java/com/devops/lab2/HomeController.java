package com.devops.lab2;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

	@GetMapping("/")
	public String  displayOrderDetails(Model model) {
        return "index";
	}
}
