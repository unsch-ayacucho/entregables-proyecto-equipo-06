package pe.edu.unsch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import pe.edu.unsch.entities.Category;
import pe.edu.unsch.service.CategoryService;
import pe.edu.unsch.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	
	@GetMapping("/category/{id}")
	public String category(@PathVariable("id") Integer id,Model model) {
		Category category=categoryService.find(id);
		
		model.addAttribute("titulo","Category : e-commerce");
		model.addAttribute("products",category.getProducts());
		model.addAttribute("classActive","active");
		return "view/public/product/category";
	}
	
	@GetMapping("datail/{id}")
	public String datail(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("titulo","Product detail: e-commerce");
		model.addAttribute("product", productService.find(id));
		return "view/public/product/datail";
	}
	
	

}
