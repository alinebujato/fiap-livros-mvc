/*
package br.com.fiap.model;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class LivroModel {
	
	private Long id;
	
	@NotEmpty
	private String sku;
	
	@NotEmpty(message="Titulo do livro não pode estar vazio.")
	private String titulo;
	
	@NotEmpty(message="Editora do livro não pode estar vazia.")
	private String editora;
	
	@NotEmpty
	private String isbn;
	
	@Size(min = 10, max = 200)
	private String sinopse;
	
	@NotNull(message="Por favor, informe o preço.")
	@DecimalMin(value = "1.0", message = "O valor do produto deve ser maior do que  R$ 1,00")
	private Double preco;	
	
	public LivroModel(Long id, String sku, String titulo, String editora, String isbn, String sinopse, Double preco) {
		super();
		this.id = id;
		this.sku = sku;
		this.titulo = titulo;
		this.editora = editora;
		this.isbn = isbn;
		this.sinopse = sinopse;
		this.preco = preco;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getEditora() {
		return editora;
	}

	public void setEditora(String editora) {
		this.editora = editora;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getSinopse() {
		return sinopse;
	}

	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}

	public Double getPreco() {
		return preco;
	}

	public void setPreco(Double preco) {
		this.preco = preco;
	}
	
	
}
*/