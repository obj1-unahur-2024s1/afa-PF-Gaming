import jugadores.*
import afa.*

object monumental {
	const capacidadTotal = 1000000
	var capacidadDelAvance = 55
	
	method nuevosAvances{
		capacidadDelAvance = 100.min(capacidadDelAvance+5)
	}
	
	
	method capacidad() = capacidadTotal * (capacidadDelAvance / 100)
	method alquierDeEstadio() = 50
}

object bombonera {
	method capacidad() = 50000
	method alquierDeEstadio() = 20
}
