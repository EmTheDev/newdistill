//
//  VolAtAdjustedProof.swift
//  DistilleryCalculator
//
//  Created by EMIL SANTOS on 10/3/17.
//  Copyright © 2017 EMIL SANTOS. All rights reserved.
//

import UIKit

class VolAtAdjustedProof: UIViewController {
    
    @IBOutlet weak var Total_Label: UILabel!
    @IBOutlet weak var Proof: UITextField!
    
    @IBAction func CalculateButton(_ sender: Any) {
        if Proof.text! == "" {
            Total_Label.text = "Must fill all fields"
            Total_Label.font = Total_Label.font.withSize(20)
        }else{
            Total_Label.font = Total_Label.font.withSize(30)
            let total: Float = Float(Proof.text!)! / 2
            Total_Label.text = "%" + "\(total)"
            UserDefaults.standard.set(Total_Label.text, forKey: "totalLabelVAP")        }
    }
    



    override func viewDidLoad() {
        super.viewDidLoad()

        Proof.keyboardType = UIKeyboardType.decimalPad
        Proof.inputAccessoryView = UIToolbar()
        Proof.placeholder = "0"

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
            Total_Label.text = x
        }
    }
}
