import empresaMensajeria.*
import personas.*


object brooklyn {
  
    const property pesoPermitido = 1000

    method puedeDejarPasarA_(_persona) {
      
      return _persona.peso() <= self.pesoPermitido()
    }
}


object matrix {
    
    method puedeDejarPasarA_(_persona) {
      
      return  _persona.puedeLlamar()
    }
}

