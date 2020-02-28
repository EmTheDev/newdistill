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
    @IBOutlet weak var ABVresult: UILabel!
    
    @IBAction func CalculateButton(_ sender: Any) {
        if !(Brix.text!.isnumberordouble){
            ABVresult.text = "Please enter a valid number"
            ABVresult.font = ABVresult.font.withSize(20)
            ABVresult.textColor = UIColor.red
        }else{
            ABVresult.font = ABVresult.font.withSize(40)
            ABVresult.textColor = UIColor.white
            let total: Float = Float(Brix.text!)! * 0.59
            ABVresult.text = "%" + "\(total)"
        }
        }
    
        override func viewDidLoad() {
        super.viewDidLoad()

        Brix.keyboardType = UIKeyboardType.decimalPad
        Brix.inputAccessoryView = UIToolbar()
        Brix.placeholder = "0"
        }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    
        override func viewDidAppear(_ animated: Bool) {
            if let x = UserDefaults.standard.object(forKey: "totalLabelVAP") as? String
            {
                ABVresult.text = x
            }
        }
}

