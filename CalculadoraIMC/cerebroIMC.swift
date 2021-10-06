//
//  cerebroIMC.swift
//  CalculadoraIMC
//
//  Created by marco rodriguez on 06/10/21.
//

import Foundation
import UIKit

struct cerebroIMC {
    
    var imc: objetoIMC?
    
    //metodos para hacer el calculo
    mutating func calcularIMC(peso: Float, altura: Float){
        let valorIMC = peso / (altura * altura)
        
        if valorIMC < 18.5 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Probabilidad de anemia", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), imagen: nil)
        } else if valorIMC < 24.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tu IMC es noraml, Felicidades!", color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: UIImage(systemName: "imc"))
            
        } else if valorIMC < 29.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes sobrepeso atencion!", color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: UIImage(systemName: "imc"))
        } else {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes obesidad Extrema", color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: UIImage(systemName: "imc"))
        }
    }
    
    
    func retornarValorIMC() -> String {
        let imcCon1Decimal = String(format: "%.1f", imc?.valor ?? 0.0)
        return imcCon1Decimal
    }
    
    func retornarMensajeIMC() -> String {
        return imc?.mensaje ?? "No hay msj"
    }
    
    
    func retornarColorIMC() -> UIColor {
        return imc?.color ?? #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    
    
}
