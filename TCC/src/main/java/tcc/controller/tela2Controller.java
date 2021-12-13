package tcc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tcc.dominio.Alternativa;
import tcc.dominio.Defeito;
import tcc.dominio.RadButton;
import tcc.repositorio.AlternativaRepository;
import tcc.repositorio.DefeitoRepository;

@Controller
@RequestMapping("/inicio")
public class tela2Controller {
	
	@Autowired
	private DefeitoRepository defeitoRep;
	
	@Autowired
	private AlternativaRepository alternativaRep;
	
	int var = 1;
	
	@GetMapping("/principal")
	public String inicar(ModelMap model) {

		model.addAttribute("numero", new RadButton());

		Defeito mensagem = defeitoRep.findById(var).get();
		model.addAttribute("defeito",mensagem);
		
		return "principal";
	}
	
	@GetMapping("/principal/submit")
	public String iniciar(RadButton numero, ModelMap model,RedirectAttributes attr){		

		int comp = numero.getNum();
		Alternativa alternativa = alternativaRep.findByIds(comp, var);
		
		if(alternativa.isCorreto()){
			attr.addFlashAttribute("msgSucesso",alternativa.getDescricao());
		}else{
			attr.addFlashAttribute("msgErro",alternativa.getDescricao());
		}
			
		return "principal";
	}
	
}
