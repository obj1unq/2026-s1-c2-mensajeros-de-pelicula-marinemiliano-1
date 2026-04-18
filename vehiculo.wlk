import personas.*
import empresaMensajeria.*
import destinos.*



object moto {
  
  const property peso = 100
}

object camion {
  
  const property pesoCamion = 500

  var property acoplados = 0
  
  method peso() {return self.pesoCamion() + (self.acoplados() * 500)}
  
} 

