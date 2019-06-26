import UIKit

enum Velocidades: Int {
    
    case apagado = 0,
        velocidadBaja = 20,
        velocidadMedia = 50,
        velocidadAlta = 120
    
    init( velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad = Velocidades(velocidadInicial: Velocidades.apagado)
    
    init(velocidad: Velocidades){
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        switch self.velocidad {
        case .apagado:
            self.velocidad = Velocidades.velocidadBaja
            return (Velocidades.apagado.rawValue, "Apagado")
        case .velocidadBaja:
            self.velocidad = Velocidades.velocidadMedia
            return (Velocidades.velocidadBaja.rawValue, "Velocidad baja")
        case .velocidadMedia:
            self.velocidad = Velocidades.velocidadAlta
            return (Velocidades.velocidadMedia.rawValue, "Velocidad media")
        case .velocidadAlta:
            self.velocidad = Velocidades.velocidadMedia
            return (Velocidades.velocidadAlta.rawValue, "Velocidad alta");
        }
    }
}

var auto = Auto(velocidad: .apagado)
for _ in 1...20 {
    let salida = auto.cambioDeVelocidad()
    print("\(salida.actual), \(salida.velocidadEnCadena)")
}
