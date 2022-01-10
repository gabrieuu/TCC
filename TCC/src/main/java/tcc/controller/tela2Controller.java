package tcc.controller;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tcc.dominio.Alternativa;
import tcc.dominio.Defeito;
import tcc.dominio.Numero;
import tcc.dominio.Usuario;
import tcc.repositorio.AlternativaRepository;
import tcc.repositorio.DefeitoRepository;
import tcc.repositorio.UsuarioRepository;

@Controller
@RequestMapping("/inicio")
public class tela2Controller {
	
	@Autowired
	private DefeitoRepository defeitoRep;
	
	@Autowired
	private AlternativaRepository alternativaRep;
	
	@Autowired
	private UsuarioRepository usuarioRep;
	
	Random random = new Random();
	
	private int var = random.nextInt(13)+1;
	
	private int comp = 0;
	
	private int score = 0;
	
	private Usuario usuario;
	
	private static ArrayList<Integer> respondidas = new ArrayList<>();
	
	@GetMapping("/principal")
	public String inicial(ModelMap model) {
		buscarUsuarioLogado();
		
		if(!respondidas.isEmpty()) {

		for (int i = 1; i <= respondidas.size(); i++) {
			if(respondidas.contains(var)) {
				
				var = random.nextInt(13)+1;
				
			}if(i==respondidas.size()) {
					var = random.nextInt(13)+1;
					break;
			}
			}
		}
		
		Defeito mensagem = defeitoRep.findById(var).get();
		model.addAttribute("defeito",mensagem);
		model.addAttribute("score",score);
		model.addAttribute("numero", new Numero());
		model.addAttribute("usuario",usuario);
		return "principal";
	}
	
	@GetMapping("/submit")
	public String formulario(Numero numero, ModelMap model,RedirectAttributes attr){		

		comp = numero.getNum();
		Alternativa alternativa = alternativaRep.findByIds(comp, var);
		
		if(alternativa.isCorreto() == true){
			model.addAttribute("msgSucesso",alternativa.getDescricao());
		}else{
			model.addAttribute("msgErro",alternativa.getDescricao());
		}
			
		return "_modal_principal";
	}
	
	@PostMapping("/prosseguir")
	public String prosseguir() {
		respondidas.add(var);
		score += 100;
		usuario.setScore(score);
		usuarioRep.save(usuario);
		return "redirect:/inicio/principal";
	}
	private void buscarUsuarioLogado() {
		Authentication autenticado = SecurityContextHolder.getContext().getAuthentication();
		if(!(autenticado instanceof AnonymousAuthenticationToken)) {
			String email = autenticado.getName();
			usuario = usuarioRep.buscarUsuarioEmail(email).get(0);
		}
	}
}	
	
