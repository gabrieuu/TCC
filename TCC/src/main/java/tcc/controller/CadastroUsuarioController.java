package tcc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import tcc.dominio.Usuario;
import tcc.repositorio.UsuarioRepository;


@Controller
@RequestMapping("/usuarios")
public class CadastroUsuarioController {
	
	@Autowired
	private UsuarioRepository usuarioRep;
	
	@GetMapping("/cadastro")
	public String home ( ModelMap model) {
		return "usuario/cadastro";
	}
	
	@GetMapping("/salvar")
	public String salvar(
			@RequestParam(value = "nome",required = false) String nome,
			@RequestParam(value = "email",required = false) String email,
			@RequestParam(value = "senha",required = false) String senha,
			ModelMap model,
			RedirectAttributes attr
			) {
		
		Usuario usuario = new Usuario(nome,email,senha);		

		//Criptografando a senha
		String senhaCriptografada = 
				new BCryptPasswordEncoder().encode(usuario.getSenha());
		usuario.setSenha(senhaCriptografada);
		
		//cadastro e edição
		usuarioRep.save(usuario);
		model.addAttribute("msgSucesso", "Operação realizada com sucesso!");
		
		
		return "_modal_index";
	}
	
	@PostMapping("/login")
	public String login() {
		return "redirect:/inicio/principal";
	}
	
	@GetMapping("/login-error")
	public String loginError(ModelMap model) {
		model.addAttribute("msgErro", "Login ou senha incorretos. Tente novamente.");
		return "usuario/login";
	}
}
