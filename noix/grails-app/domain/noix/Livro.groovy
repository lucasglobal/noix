package noix

class Livro {

	int codigo;
	String nome;
	Boolean status;
	static belongsTo = [pessoa: Pessoa];

	def emprestar(){

	}

    static constraints = {
    	status nullable: true;
    	pessoa nullable: true;
    }
}
