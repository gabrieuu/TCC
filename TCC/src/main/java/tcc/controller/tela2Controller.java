package tcc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import tcc.dominio.Defeito;
import tcc.repositorio.AlternativaRepository;
import tcc.repositorio.DefeitoRepository;

@Controller
@RequestMapping("/inicio")
public class tela2Controller {
	
	@Autowired
	private DefeitoRepository defeitoRep;
	
	@Autowired
	private AlternativaRepository alternativaRep;
	
	
	@GetMapping("/principal")
	public String inicar(ModelMap model) {
		
		int var = 1;
		Defeito mensagem = defeitoRep.findById(var).get();
		model.addAttribute("defeito",mensagem);
		
		return "principal";
	}
	
	@GetMapping("/principal/submit")
	public String iniciar(){

		return "index";
	}
	
}
