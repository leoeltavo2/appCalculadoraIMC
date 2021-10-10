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
    
    let color: UIColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    //metodos para hacer el calculo
    mutating func calcularIMC(peso: Float, altura: Float){
        let valorIMC = peso / (altura * altura)
        
        if valorIMC < 18.5 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Probabilidad de anemia", color:  #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), imagen: UIImage(named: "anemia"))
           // print(valorIMC)
        }
        else if valorIMC < 24.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tu IMC es normal, Felicidades!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), imagen: UIImage(named: "sana"))
           // print(valorIMC)
            
        } else if valorIMC < 29.9 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes sobrepeso atencion!", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), imagen: UIImage(named: "obeso"))
            //print(valorIMC)
        } else {
            imc = objetoIMC(valor: valorIMC, mensaje: "Tienes obesidad Extrema", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), imagen: UIImage(named: "sobrepeso"))
//            print(valorIMC)
        }
    }
    
    func retornarValorIMC() -> String {
        let imcCon1Decimal = String(format: "%.1f", imc?.valor ?? 0.0)
        return imcCon1Decimal
    }
    
    func retornarColor () -> UIColor {
        return imc?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func retornarMSJ() -> String {
        return imc?.mensaje ?? "Sin MSJ"
    }
    
    func retornarImagen() -> UIImage{
     
        return imc?.imagen ?? UIImage(named: "imc") as! UIImage
        
    }
    
    
}
