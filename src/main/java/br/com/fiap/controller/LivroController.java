package br.com.fiap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LivroController {

	@RequestMapping(value = {"/livros", "/"}, method = RequestMethod.GET)
	public String livros(Model model) {
		model.addAttribute("hello", "Bem vindo ao Spring MVC");
		return "livros";
	}
}
