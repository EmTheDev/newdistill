//
//  AlcoholCorrectionTempHydrometer.swift
//  DistilleryCalculator
//
//  Created by emil on 9/18/19.
//  Copyright © 2019 EMIL SANTOS. All rights reserved.
//

import UIKit

class AlcoholCorrectionTempHydrometer: UIViewController {
    var values: [String: String] =
        ["76d1": "101.9", "76d2": "101.5","76d3":"101.0","76d4":"100.6","76d5":"100.2","76d6":"99.8","76d7":"99.4","76d8":"98.9","76d9":"98.5","76d10":"98.1"]

    @IBOutlet weak var hydrometerReading: UITextField!
    @IBOutlet weak var temperature: UITextField!
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func lookUpButton(_ sender: Any) {
        let tupleValue = hydrometerReading.text! + "d" + temperature.text!
        
        
        result.text = values[tupleValue]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hydrometerReading.keyboardType = UIKeyboardType.decimalPad
        temperature.keyboardType = UIKeyboardType.decimalPad
        hydrometerReading.inputAccessoryView = UIToolbar()
        temperature.inputAccessoryView = UIToolbar()
        hydrometerReading.placeholder = "0"
        temperature.placeholder = "0"
        

        
        
        
        // Do any additional setup after loading the view.
    }
}
