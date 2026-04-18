import vehiculo.*
import empresaMensajeria.*
import destinos.*



object george {

    method pagarEnvio() {empresaMensajeria.recibirPago()}
}

object jean {
  
  const property peso = 65

  method puedeLlamar() {return true}
}

object neo {
  
  const property peso = 0

  var property estadoCredito = null

  method puedeLlamar() {return self.estadoCredito()}

}


object sara {
  
  var property pesoSara = 50
  var property vehiculo = null

  method pesoTotal() {return vehiculo.peso() + self.pesoSara()}

  method viajaEn(_nuevoVehiculo) {vehiculo = _nuevoVehiculo}

  method puedeLlamar() {return false}

}