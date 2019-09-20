//
//  VolFromGeometriesOfTanks.swift
//  DistilleryCalculator
//
//  Created by emil on 9/5/19.
//  Copyright © 2019 EMIL SANTOS. All rights reserved.
//

import UIKit

class VolFromGeometriesOfTanks: UIViewController {

    @IBOutlet weak var Length: UITextField!
    @IBOutlet weak var Width: UITextField!	
    @IBOutlet weak var Height: UITextField!
    @IBOutlet weak var totalGallons: UILabel!
    
    @IBAction func CalculateButton(_ sender: Any) {
        if !(Length.text!.isnumberordouble && Width.text!.isnumberordouble && Height.text!.isnumberordouble){
            totalGallons.font = totalGallons.font.withSize(20)
            totalGallons.textColor = UIColor.red
            totalGallons.text = "Must enter valid numbers"
        }else{
            totalGallons.font = totalGallons.font.withSize(40)
            totalGallons.textColor = UIColor.white
            let total: Float = Float((Float(Length.text!)! * Float(Width.text!)! * Float(Height.text!)! * 7.48052))
            totalGallons.text = "\(total)" + " G"
            //UserDefaults.standard.set(totalGallons.text, forKey: "totalLabelPG")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Length.keyboardType = UIKeyboardType.decimalPad
        Width.keyboardType = UIKeyboardType.decimalPad
        Height.keyboardType = UIKeyboardType.decimalPad
        
        Length.inputAccessoryView = UIToolbar()
        Width.inputAccessoryView = UIToolbar()
        Height.inputAccessoryView = UIToolbar()
        
        Length.placeholder = "0"
        Width.placeholder = "0"
        Height.placeholder = "0"

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "totalLabelPG") as? String
        {
            totalGallons.text = x
        }
    }}
