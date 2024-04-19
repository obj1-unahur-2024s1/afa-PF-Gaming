import estadios.*
import jugadores.*
object afa {
	var plataAcumuladada = 0
	var jugadorActual = messi
	var estadioActual = bombonera
	
	method jugadorActual()= jugadorActual
	method jugadorActual(nuevoJugador){jugadorActual = nuevoJugador}
	method estadioActual()= estadioActual
	method estadioActual(nuevoEstadio){estadioActual = nuevoEstadio}
	
	method precioDeEntrada(){
		 
		return 10000 * inflacion.inflacionActual()
	}
	method cantidadDeVentas(){
		return estadioActual.capacidad() * jugadorActual.popularidad() / 100
	}
	method totalRecaudado(){
		return self.precioDeEntrada() * self.cantidadDeVentas()
	}
	method valorEvento() = 10000000
	
	method costoDeEvento(){
		return self.valorEvento() + jugadorActual.viaticos() + estadioActual.alquierDeEstadio() 
	}
	
	
	method gananciaNeta(){
		return 0.max(self.totalRecaudado() - self.costoDeEvento())
	}
	
	method jugarPartido(){
		plataAcumuladada = plataAcumuladada + self.gananciaNeta()
	}
}


object inflacion {
	method inflacionActual() = 50
}
