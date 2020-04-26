package br.com.fiap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LivroController {

	@RequestMapping(value = {"/livros", "/"}, method = RequestMethod.GET)
	public String livros(Model model) {
		model.addAttribute("hello", "Bem vindo ao Spring MVC");
		return "livros";
	}
	
	/*
	private LivroRepository livroRepository = LivroRepository.getInstance();

	@GetMapping
	public String findAll(Model model) {
		
		List<LivroModel> listaDeLivros = livroRepository.findAll();
		
		model.addAttribute("livros", listaDelivros);
		
		return "livros";
	}
	
	@GetMapping(value = "{/id}")
	public String findById(@PathVariable("id")long id, Model model) {
		
		LivroModel livroEncontrado = livroRepository.findById(id);
				
		model.addAttribute("livro", livroEncontrado);
		
		return "detalhe-livro";
	}
	
	@GetMapping("/form")
	public String open(@RequestParam String page, @RequestParam(required = false) Long id, @ModelAttribute("livroModel") LivroModel livroModel) {
				
		return page;
	}
		
	
	//@RequestMapping(value = "/new", method = RequestMethod.GET)
	@GetMapping("/new")
	public String form(@ModelAttribute("livroModel") LivroModel livroModel) {
		return "novo-livro";
	}
	
	@PostMapping("/new")
	public String save(@Valid LivroModel livroModel,BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if (bindingResult.hasErrors()) {
			return "livro-novo";
		}
		
		livroRepository.Save(livroModel);		
		redirectAttributes.addFlashAttribute("messages", "Livro cadastrado com sucesso.");		
		return "redirect:/livro";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable("id")long id, Model model) {
				
		model.addAttribute("livro", livroRepository.findById(id));

		return "editar-livro";
	}
	
	@PutMapping("/{id}")
	public String updateLivro(LivroModel livroModel, Model model) {
		
		//produtoModel.setId(id);
		livroRepository.update(livroModel);
		
		model.addAttribute("livro", livroRepository.findAll());
		
		return "redirect:/livros";
	}
	
	//@RequestMapping(value="/delete/{id}", method = RequestMethod.POST)
	@DeleteMapping("/delete/{id}")
	public String deleteLivro(@PathVariable LivroModel livroModel, Model model, RedirectAttributes redirectAttributes) {
		
		livroRepository.delete(livroModel);
		
		redirectAttributes.addFlashAttribute("messages", "Livro excluído com sucesso !");
	
		return "redirect:/livro";
	}
	*/
}