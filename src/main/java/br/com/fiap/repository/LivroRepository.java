package br.com.fiap.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.fiap.model.LivroModel;

public class LivroRepository {

	private static LivroRepository instance;

	private static Map<Long, LivroModel> livros;

	private LivroRepository() {
		livros = new HashMap<Long, LivroModel>();
		
		livros.put(1L, new LivroModel(1L, 123, "Titulo livro 1", "Editora livro 1", "123456", "Sinopse 1", 10.0));
		livros.put(2L, new LivroModel(2L, 321, "Titulo livro 2", "Editora livro 2", "654321", "Sinopse 2", 20.0));
		livros.put(3L, new LivroModel(3L, 456, "Titulo livro 3", "Editora livro 3", "142536", "Sinopse 3", 30.0));
		livros.put(4L, new LivroModel(4L, 654, "Titulo livro 4", "Editora livro 4", "789456", "Sinopse 4", 40.0));
		livros.put(5L, new LivroModel(5L, 789, "Titulo livro 5", "Editora livro 5", "987654", "Sinopse 5", 50.0));
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

	public void save(LivroModel livro) {
		Long novoLivroId = (long)(livros.size() + 1);
		livro.setId(novoLivroId);
		livros.put(novoLivroId, livro);
	}

	public void update(LivroModel livro) {
		livros.put(livro.getId(), livro);
	}

	public void deleteById(long id) {
		livros.remove(id);
	}

}