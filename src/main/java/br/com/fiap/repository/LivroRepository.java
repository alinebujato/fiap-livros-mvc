/*package br.com.fiap.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.fiap.model.LivroModel;

public class LivroRepository {

	private static LivroRepository instance;

//	Map que simula o banco de dados.
	private static Map<Long, LivroModel> produtos;

	private LivroRepository() {
		livros = new HashMap<Long, LivroModel>();

//	"Populando Banco de Dados"
		livros.put(1L, new LivroModel(1L, "Livro 1 Nome", "Sku-01", "Desc Produto 1", 10.50, "O produto 1 é muito bom"));
		livros.put(2L, new LivroModel(2L, "Livro 2 Nome", "Sku-02", "Desc Produto 2", 3.50, "O produto 2 é muito bom"));
		livros.put(3L, new LivroModel(3L, "Livro 3 Nome", "Sku-03", "Desc Produto 3", 20.50, "O produto 3 é muito bom"));
	}

	public static LivroRepository getInstance() {
		if(instance == null) {
			instance = new ProdutoRepository();
		}

		return instance;
	}


	public List<LivroModel> findAll(){
		return new ArrayList<LivroModel>(livros.values());
	}

	public LivroModel findById(Long id) {
		return livros.get(id);
	}

	public void Save(LivroModel livro) {
		Long novoLivroId = (long)(livros.size() + 1);
		livro.setId(novoLivroId);
		livros.put(novoLivroId, livro);
	}

	public void update(LivroModel livro) {
		livros.put(livro.getId(), livro);
	}

	public void delete(LivroModel livro) {
		livro.remove(produto.getId());
	}

}

*/