//
//  PotentialAlcoholFromBrix.swift
//  DistilleryCalculator
//
//  Created by EMIL SANTOS on 10/3/17.
//  Copyright © 2017 EMIL SANTOS. All rights reserved.
//

import UIKit

class PotentialAlcoholFromBrix: UIViewController {

    @IBOutlet weak var Brix: UITextField!
    
    @IBOutlet weak var Total_Label: UILabel!
    
    @IBAction func CalculateButton(_ sender: Any) {
        if Brix.text! == "" {
            Total_Label.text = "Must fill all fields"
        }else{
            let total: Float = Float(Brix.text!)! * 0.55
            Total_Label.text = "%" + "\(total)"
            UserDefaults.standard.set(Total_Label.text, forKey: "totalLabelPAB")        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Brix.keyboardType = UIKeyboardType.decimalPad
        Brix.inputAccessoryView = UIToolbar()
        Brix.placeholder = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "totalLabelPAB") as? String
        {
            Total_Label.text = x
        }
    }

}
