package tcc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tcc.dominio.Usuario;



@Controller
@RequestMapping("/")
public class inicioController {
	@GetMapping("/home")
	public String home(ModelMap model){
		return "index";
		
	}
}
