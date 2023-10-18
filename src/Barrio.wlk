import elementos.*

class Barrio {
	
	const elemento = []
	
	method agregarElemento(unElemento){elemento.add(unElemento)}
	method eliminarElemento(unElemento){elemento.remove(unElemento)}

	method esBarrioCopado() = elemento.count({a => a.esBueno()}) > elemento.count({a => !a.esBueno()})
	
}
