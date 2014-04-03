package noix

class Pessoa {

	int codigo;
	String nome;
	static hasMany = [livros: Livro];

	def pegarLivro(){
	}


    static constraints = {
    }
}
