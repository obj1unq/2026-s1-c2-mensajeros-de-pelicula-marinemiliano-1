import empresaMensajeria.*
import personas.*
import vehiculo.*


object brooklyn {
  
    const property pesoPermitido = 1000

    method puedeEntregarPaquete(_persona) {
      
       self.validarCredencialPara(_persona)
    }

    method validarCredencialPara(_persona) {
      
      if (not self.puedePasar(_persona)) {
          
        self.error("CREDENCIAL DENEGADA.El mensajero no puede ingresar")    
      }
    }

    method puedePasar(_persona) {
      
        return _persona.pesoTotal() < self.pesoPermitido()
    }
}


object matrix {

    var property permisoDeAcceso = null

    method puedeEntregarPaquete(_persona) {
      
       self.validarCredencialPara(_persona)
    }
    
      method validarCredencialPara(_persona) {
      
      if (not _persona.puedeLlamar()) {
          
          self.error("CREDENCIAL DENEGADA.El mensajero no puede ingresar")
      }
    }    
}

