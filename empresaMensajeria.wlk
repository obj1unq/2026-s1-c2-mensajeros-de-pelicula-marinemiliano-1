import personas.*
import destinos.*
import vehiculo.*



object empresaMensajeria {

    //arranca en false hasta que no reciba el pago 
    //por parte del usuario no se modifica la variable
    var pagoRealizado = false



    method validarEntrega(_destino,_mensajeroDesignado) {

      return _destino.puedeEntregarPaquete(_mensajeroDesignado)
    }

    method validarPago() {

      if (not self.estaPago()) {
        
        self.error("ENVIO DENEGADO,el paquete no se encuentra pago")
      } 
    }

    method recibirPago() {pagoRealizado = true}

    method estaPago() {return pagoRealizado}
}


//como esta en el apunte
/* 
    para copiarlo igual al ejercicio de la pagina 21
    los asignaria en los test
    //luego se designa a un mensajero entre tres

    var property mensajeroDesignado = null
    var property destino = null


    method puedeEntregar() {

      self.validarEntrega()
      destino.puedeEntregarPaquete(mensajeroDesignado)
    } 

    method validarEntrega(){

      self.validarPago()
      destino.validarCredencialPara(mensajeroDesignado)
    }
*/