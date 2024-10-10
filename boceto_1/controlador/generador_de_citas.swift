//
//  generador_de_citas.swift
//  boceto_1
//
//  
//

import Foundation


class GeneradorDeCitas{
    var citas_creadas: Array<Cita>
    
    init(){
        citas_creadas = []
    }
    
    func agregar_cita_manual(_ que_dijo: String, quien_lo_dijo: String){
        let cita_generada = Cita(quien_lo_dijo: quien_lo_dijo, que_dijo: que_dijo)
        
        citas_creadas.append(cita_generada)
    }
    
    func agregar_cita(_ cita_nueva: Cita){
        citas_creadas.append(cita_nueva)
    }
    
    
    func generar_citas_falsas(){
        self.agregar_cita_manual("La vida es lo que sucede cuando estás ocupado haciendo otros planes",
                     quien_lo_dijo: "John Lennon"
        )
        
        self.agregar_cita_manual("La forma de empezar es dejar de hablar y empezar a hacer",
                          quien_lo_dijo: "Walt Disney"
        )
        
        self.agregar_cita_manual("GRrrrrr grrr grrr GRRRRR grrrgGRGRh",
                          quien_lo_dijo: "Zombie"
        )
        
        self.agregar_cita_manual("Dime y lo olvido. Enséñame y lo recuerdo. Involucrarme y aprendo. ",
                          quien_lo_dijo: "Benjamin Franklin"
        )
    }
    
    func obtener_cita_aleatoria() -> Cita{
        var cita_para_regresar: Cita
        cita_para_regresar = citas_creadas[Int.random(in: 0...citas_creadas.count-1)]
        
        return cita_para_regresar
        
    }
    
    
}
