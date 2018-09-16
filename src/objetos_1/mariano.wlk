object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var bolsaDeGolosinas = []
	method comprar(golosina) { bolsaDeGolosinas.add(golosina) }
	method desechar(golosina) { bolsaDeGolosinas.remove(golosina) }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return bolsaDeGolosinas
	}
	
	method probarGolosinas() { bolsaDeGolosinas.forEach{ golosina => golosina.mordisco() } }
	method hayGolosinaSinTACC() = bolsaDeGolosinas.any{ golosina => golosina.libreGluten() }
	method preciosCuidados() = bolsaDeGolosinas.all{ golosina => golosina.precio() <= 10 }
	method golosinaDeSabor(unSabor) = bolsaDeGolosinas.find{ golosina => golosina.sabor() == unSabor }
	method golosinasDeSabor(unSabor) = bolsaDeGolosinas.filter{ golosina => golosina.sabor() == unSabor }
	method sabores() = bolsaDeGolosinas.map{ golosina => golosina.sabor() }.asSet()
	method golosinaMasCara() = bolsaDeGolosinas.max{ golosina => golosina.precio() }
	method pesoGolosinas() = bolsaDeGolosinas.sum{ golosina => golosina.peso() }
	method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.asSet().difference(bolsaDeGolosinas.asSet())
	method gustosFaltantes(gustosDeseados) = gustosDeseados.asSet().difference(self.sabores())
}

