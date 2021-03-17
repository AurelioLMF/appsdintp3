package br.infnet.edu.appTP3aurelio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.infnet.edu.appTP3aurelio.model.negocio.Usuario;
import br.infnet.edu.appTP3aurelio.model.service.UsuarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping(value = "/")
	public String iniciar(Model model) {
		model.addAttribute("nome", "Aurelio L M Fagundes");
		model.addAttribute("email", "aureliolmf@hotmail.com");
		model.addAttribute("git", "https://github.com/AurelioLMF/appSDIN");
		return "index";	
	}
	
	@GetMapping(value = "/usuario")
	public String cadastrar(Model model) {
		model.addAttribute("usuario", usuarioService.obterLista());	
		return "usuario/detalhe";
	}
	
	@PostMapping(value = "/usuario/incluir")
	public String incluirUsuario(Usuario usuario) {
		
		usuarioService.incluir(usuario);
		
		return "redirect:/usuario";
	}
	
	@GetMapping(value = "/usuario/{id}/excluir")
	public String exluir(@PathVariable Integer id) {
		
		usuarioService.excluir(id);
		
		return "redirect:/usuario";
	}
	
}
