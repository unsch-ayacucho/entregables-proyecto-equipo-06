package pe.edu.unsch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import pe.edu.unsch.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping({"/","/home"})
	public String index(Model model) {
		model.addAttribute("titulo", "Bigstore : e-commerce");
		model.addAttribute("classActive", "active");
		model.addAttribute("featuredProducts", productService.featured(2));
		return "view/public/home/index";
	}

}
