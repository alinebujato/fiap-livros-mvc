package br.com.fiap.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.fiap.model.LivroModel;

public class LivroRepository {

	private static LivroRepository instance;

	//	Map que simula o banco de dados.
	private static Map<Long, LivroModel> livros;

	private LivroRepository() {
		livros = new HashMap<Long, LivroModel>();

		//	"Populando Banco de Dados"
		livros.put(1L, new LivroModel(1L, "Titulo livro 1", "Editora livro 1", "Banana", "Sinopse 1", 1.0));
		livros.put(2L, new LivroModel(2L, "Titulo livro 2", "Editora livro 2", "2", "Sinopse 2", 2.0));
		livros.put(2L, new LivroModel(2L, "Titulo livro 3", "Editora livro 3", "3", "Sinopse 3", 3.0));
	}

	public static LivroRepository getInstance() {
		if(instance == null) {
			instance = new LivroRepository();
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
		livros.remove(livro.getId());
	}

}