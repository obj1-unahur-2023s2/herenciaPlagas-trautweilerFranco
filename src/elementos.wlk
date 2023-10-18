class Hogar  {
	
	var nivelDeMugre
	const confort

	method esBueno(){
		return nivelDeMugre <= confort / 2
	}
	
	method recibirAtaque(unaPlaga){
		nivelDeMugre += unaPlaga.nivelDeDanio()
	}
}

class Huerta  {
	var nivelDeProduccion
	var capacidadDeProduccion

	method esBueno()= capacidadDeProduccion > nivelDeProduccion
	
	method recibirAtaque(unaPlaga){
		
		capacidadDeProduccion -= (unaPlaga.nivelDeDanio()*0.1) 
		if (unaPlaga.transmiteEnfermedades()){
			capacidadDeProduccion -=  10 
		}
	}
}


class Mascota  {
	var nivelDeSalud

	method esBueno()= nivelDeSalud > 250
	
	method recibirAtaque(unaPlaga){
		if (unaPlaga.transmiteEnfermedades()){
			nivelDeSalud -= unaPlaga.nivelDeDanio()	
		}
	}
		
}