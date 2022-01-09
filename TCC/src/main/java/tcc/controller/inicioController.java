package tcc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tcc.dominio.Usuario;


@Controller
public class inicioController {
	@GetMapping("/")
	public String home(ModelMap model){
		
		return "index";
		
	}

	@GetMapping("/login")
	public String login() {
		return "index";
	}
	
	@GetMapping("/login-error")
	public String loginError(ModelMap model) {
		model.addAttribute("msgErro", "Login ou senha incorretos. Tente novamente.");
		return "index";
	}
}
