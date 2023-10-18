class Plaga {
	
	var poblacion
		
	method nivelDeDanio()
	
	method transmiteEnfermedades() = poblacion >= 10 
	
	method hacerAtaque(){
		poblacion += poblacion * 0.10
	}
	
}


class Cucaracha inherits Plaga {
	
	var pesoCucarachas
		
	override method nivelDeDanio(){
		return poblacion / 2
	}
	
	override method transmiteEnfermedades() = super() and pesoCucarachas >=	 10
	
	override method hacerAtaque(){
		super()
		pesoCucarachas += 2
	}
}

class Pulgas inherits Plaga {
	
	override method nivelDeDanio(){
		return poblacion * 2
	}
	
} 

class Garrapatas inherits Plaga {
	
	override method nivelDeDanio(){
		return poblacion * 2
	}
	
	override method hacerAtaque(){
		super()
		super()
	}
} 


class Mosquitos inherits Plaga {
	
	override method nivelDeDanio(){
		return poblacion
	}
	
	override method transmiteEnfermedades() = super() and poblacion % 3 == 0
	
} 