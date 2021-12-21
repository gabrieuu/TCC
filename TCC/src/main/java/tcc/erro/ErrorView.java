package tcc.erro;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.autoconfigure.web.servlet.error.ErrorViewResolver;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

@Component
public class ErrorView implements ErrorViewResolver{

	@Override
	public ModelAndView resolveErrorView(HttpServletRequest request, HttpStatus status, Map<String, Object> map) {
		ModelAndView model = new ModelAndView("error");
		model.addObject("status", status.value());
		
		switch (status.value()) {
		case 404:
			model.addObject("error","Pagina não encontrada!");
			model.addObject("message","a URL da pagina \""+ map.get("path") + "\" não existe");
			break;
		case 500:
			model.addObject("error","Erro interno do servidor!");
			model.addObject("message","Ocorreu um erro inesperado, por favor, volte mais tarde!");
			break;
		case 403:
			model.addObject("error","Acesso negado!");
			model.addObject("message","você não possui permisão para acessar essa área ou função!");
			break;
		default:
			model.addObject("error",map.get("error"));
			model.addObject("message",map.get("message"));
			break;
		}
		return model;
	}
	
	
}
