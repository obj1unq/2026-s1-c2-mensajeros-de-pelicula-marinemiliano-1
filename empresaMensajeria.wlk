import personas.*
import destinos.*
import vehiculo.*



object empresaMensajeria {

    //arranca en false hasta que no reciba el pago 
    //por parte del usuario no se modifica la variable
    var pagoRealizado = false

    method puedeEntregarPaquete_EnDestino_(_mensajeroDesignado,_destino) {
      
      return self.estaEnvioPago() && _destino.puedeDejarPasarA_(_mensajeroDesignado)
    }


    /* destino.entregarPaquetePor_(_mensajeroDesignado)
        _mensajeroDesignado.entregarPaquete(_destino)
      } */
    
    method recibirPago() {pagoRealizado = true}

    method estaEnvioPago() {return pagoRealizado}

    }


//como esta en el apunte
/* 

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