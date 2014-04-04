package noix



class LivroController {

    def scaffold = Livro

    def emprestar(){
        render "O livro foi emprestado";
    }
    def devolver(){
        render "O livro foi devolvido";
    }

}
