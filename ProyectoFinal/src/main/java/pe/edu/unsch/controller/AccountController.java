package pe.edu.unsch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import pe.edu.unsch.entities.Account;
import pe.edu.unsch.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("titulo", "New account : e-commerce");
		model.addAttribute("account", new Account());
		return "view/public/account/register";
	}
	
	@GetMapping("/customerorders")
	public String customerorders(Model model) {
		model.addAttribute("titulo", "My account : e-commerce");
		model.addAttribute("account", new Account());
		return "view/public/account/customer-orders";
	}
	
	@PostMapping("/register")
	public String register(@ModelAttribute("account") Account account, RedirectAttributes redir) {
		redir.addAttribute("titulo", "New account : e-commerce");
		System.out.println("prueba account: " + account.getEmail());
		
		try {
			accountService.create(account);
			redir.addFlashAttribute("message", "La cuenta fue creada correctamente");
			return "redirect:/account/register";
		} catch (Exception e) {
			redir.addFlashAttribute("message", "No puede registrar nueva cuenta");
			return "redirect:/account/register";
		}
	}
	
	@PostMapping("/login")
	public String myaccount(HttpServletRequest request, HttpSession session, RedirectAttributes redir) {
		redir.addFlashAttribute("account", new Account());
		Account account = this.accountService.login(request.getParameter("email"), request.getParameter("password"));
		
		if (account == null) {
			redir.addFlashAttribute("error", "Cuenta inválida");
			return "redirect:/account/register";
		} else {
			session.setAttribute("email", account.getEmail());
			return "redirect:/account/customerorders";
		}
	}
	
	@GetMapping("/logout") 
	public String logout(HttpSession session) {  
		session.removeAttribute("email");  
		return "redirect:/account/register"; 
	}

}
