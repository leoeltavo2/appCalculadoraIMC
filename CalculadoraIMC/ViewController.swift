//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by marco rodriguez on 06/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderAltura: UISlider!
    @IBOutlet weak var sliderPeso: UISlider!
    
    //Labels
    @IBOutlet weak var alturaLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alturaLabel.text = "\(sliderAltura.value) Cms."
        pesoLabel.text = "\(sliderPeso.value) Kg."
    }

    @IBAction func calcularBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "calcular", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calcular" {
            let destino = segue.destination as! ResultadoViewController
        }
    }
    
    
    @IBAction func pesoSliderAccion(_ sender: UISlider) {
        print(sender.value)
        //mostrar en el label el valor del slider
        
        //var balance = String(format: "%.2f", balanceNumber)
        pesoLabel.text = "\(String(format: "%.1f", sender.value))  Kg."
        
    }
    
    @IBAction func alturaSliderAccion(_ sender: UISlider) {
        print(sender.value)
        alturaLabel.text = "\(String(format: "%.1f", sender.value))  Cms."
    }
}

