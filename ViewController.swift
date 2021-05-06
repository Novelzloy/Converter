//
//  ViewController.swift
//  TConverter
//
//  Created by Роман on 19.05.2020.
//  Copyright © 2020 Роман. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var  celsiualLable: UILabel!
    @IBOutlet weak var  faringlLable: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    @IBAction func sliderValue (_ sender: UISlider){
        let celsius = Int(round(sender.value))
        celsiualLable.text = "\(celsius) ºC"
        let farengate = Int(round((sender.value * 9 / 5) + 32))
        faringlLable.text = "\(farengate) ºF"
        
    }
    
    
}

