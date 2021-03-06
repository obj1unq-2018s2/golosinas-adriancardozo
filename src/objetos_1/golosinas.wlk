object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	method precio() = 12
	method peso() = peso
	method gusto() = "chocolate"
	method libreGluten() = false
	method mordisco(){ peso = peso * 0.8 }
}

object caramelo {
	var peso = 5
	method precio() = 1
	method peso() = peso
	method gusto() = "frutilla"
	method libreGluten() = true
	// TODO Ojo que el peso no llegue a ser negativo!
	method mordisco(){ peso -= 1 }
}

object chupetin {
	var peso = 7
	method precio() = 2
	method peso() = peso
	method gusto() = "naranja"
	method libreGluten() = true
	method mordisco(){ peso = if(peso < 2) peso else peso * 0.9 }
}

object oblea {
	var peso = 250
	method precio() = 5
	method peso() = peso
	method gusto() = "vainilla"
	method libreGluten() = false
	method mordisco(){ peso = if(peso > 70) peso / 2 else peso * 0.75 }
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method peso() = pesoActual
	method precio() = 0.50 * pesoInicial
	method libreGluten() = false
	method gusto() = "chocolate"
	
	// TODO Ojo que el peso no llegue a ser negativo!
	method mordisco() { pesoActual -= 2 }
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio() + 2 }
	method peso() { return golosinaInterior.peso() + pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten() }	
}

object tuttifrutti {
	// como manejar el cambio de sabor ??
	var saboresPosibles = ["frutilla","chocolate","naranja"]
	var saborActual = 0
	var peso = 5
	var property libreGluten = false
	method precio() = if(libreGluten) 7 else 10
	method peso() = peso
	method mordisco(){ saborActual = (saborActual + 1) % 3 }
	method gusto() = saboresPosibles.get(saborActual)
}
