package noix

class Livro {

	int codigo;
	String nome;
	Boolean status;
	static belongsTo = [pessoa: Pessoa];

	def emprestar(){

	}

    static constraints = {
    	pessoa unique: true;
    	pessoa nullable: true;
    	pessoa display: (false);
    	status nullable: true;
    	status display: (false);

    }
}
