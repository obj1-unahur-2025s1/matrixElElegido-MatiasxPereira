object nave {
    const pasajeros = [neo, morfeo, trinity]
    method cantidadDePasajeros() = pasajeros.size() 
    method pasajeroDeMayorVitalidad() = pasajeros.max({p => p.vitalidad()})
    method pasajeroDeMenorVitalidad() = pasajeros.min({p => p.vitalidad()})  
    method estaEquilibrada() = self.pasajeroDeMayorVitalidad().vitalidad() < self.pasajeroDeMenorVitalidad().vitalidad() *2
    method estaElElegido() = pasajeros.any({P => P.esElElegido()}) 

    method chocar() {
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }

    method acelerar() {
        self.pasajerosNoSonElElegido().forEach({p => p.saltar()})
    }

    method pasajerosNoSonElElegido() = pasajeros.filter({p => !p.esElElegido()}) 
}

object neo {

    var energia = 100

    method esElElegido() = true

    method saltar() {
        energia = energia /2
    }   

    method vitalidad() = energia * 0.1 



}

object morfeo {

    var vitalidad = 8
    var estaCansado = false

    method vitalidad() = vitalidad 
    method esElElegido() = false

    method saltar() {
        vitalidad = 0.max(vitalidad - 1)
        estaCansado = !estaCansado
        }
}

object trinity {
    method vitalidad() = 0 
    method esElElegido() = false
    method saltar() {}
}



