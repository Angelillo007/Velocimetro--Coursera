//
//  ViewController.swift
//  Velocimetro--Coursera
//
//  Created by Angel Amaya on 17/11/15.
//  Copyright © 2015 Angel. All rights reserved.
//

import UIKit

//: Playground - noun: a place where people can play

import UIKit


// enumeracion de la clase de Velocidad con un inicializador de Velocidad inicial con Integracion de las Distintas Velocidades

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    
    init (velocidadInicial : Velocidades) {
        
        self = velocidadInicial
        
    }
}

// Asignacion de la clase Auto para determinar las diferentes velocidades y su respectivo Inicializador

class Auto {
    var velocidad: Velocidades
    
    init () {
        
        velocidad = Velocidades(velocidadInicial: .Apagado)
        
    }
    
    func cambioDeVelocidad () -> (actual: Int, velocidadEnCadena: String){
        
        var estadoVelocidad = ""
        let actual = velocidad.rawValue
        
        switch velocidad {
            
        case .Apagado:
            
            velocidad = .VelocidadBaja
            estadoVelocidad = "Apagado"
            
        case .VelocidadBaja:
            
            velocidad = .VelocidadBaja
            estadoVelocidad = "VelocidadBaja"
            
        case .VelocidadMedia:
            
            velocidad = .VelocidadMedia
            estadoVelocidad = "VelocidadMedia"
            
        case .VelocidadAlta:
            
            velocidad = .VelocidadAlta
            estadoVelocidad = "VelocidadAlta"
            
        }
        return (actual, estadoVelocidad)
    }
}

// Impresion en consola del recorrido de las velocidades del 1 al 20. Cada numero tiene asignado un valor y su velocidad determinada

let automovil = Auto ()

for a in 1...20 {
    
    let resultados = automovil.cambioDeVelocidad ()
    
    print ("\(a)", "\(resultados.actual)", "\(resultados.velocidadEnCadena)" )
    
}


