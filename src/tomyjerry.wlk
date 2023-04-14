import ratones.*

object tom {
	var energia=80
	var posicion= 0
	method posicion()=posicion
	method energia()=energia
	method velocidad()= 5+(self.energia()/10)
	method esMasVeloz(algunRaton)= self.velocidad() > algunRaton.velocidad()
	
	method energiaAConsumir(raton){
		return 0.max(self.energia()- 0.5*self.velocidad()*(posicion-raton.posicion()).abs())}
	
	method correrA(raton) {
		posicion= (posicion-raton.posicion()).abs()
		energia= self.energiaAConsumir(raton)}


}	


