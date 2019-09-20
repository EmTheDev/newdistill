//
//  ProofGallons.swift
//  DistilleryCalculator
//
//  Created by EMIL SANTOS on 10/3/17.
//  Copyright © 2017 EMIL SANTOS. All rights reserved.
//

import UIKit

class ProofGallons: UIViewController {

    @IBOutlet weak var TotalVolume: UITextField!
    @IBOutlet weak var ABV: UITextField!
    @IBOutlet weak var Total_Label: UILabel!
    
    
    @IBAction func calculateButton2(_ sender: Any) {
        if !(TotalVolume.text!.isnumberordouble && ABV.text!.isnumberordouble){
            Total_Label.font = Total_Label.font.withSize(20)
            Total_Label.textColor = UIColor.red
            Total_Label.text = "Must enter valid numbers"
        }else{
            Total_Label.textColor = UIColor.white
            Total_Label.font = Total_Label.font.withSize(40)
            let total: Float = (Float(TotalVolume.text!)! * Float(ABV.text!)! * 2)/100
            Total_Label.text = "\(total)" + " G"
            UserDefaults.standard.set(Total_Label.text, forKey: "totalLabelPG")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TotalVolume.keyboardType = UIKeyboardType.decimalPad
        ABV.keyboardType = UIKeyboardType.decimalPad
        TotalVolume.inputAccessoryView = UIToolbar()
        ABV.inputAccessoryView = UIToolbar()
        TotalVolume.placeholder = "0"
        ABV.placeholder = "0"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "") as? String
        {
            Total_Label.text = x
        }
    }
}
