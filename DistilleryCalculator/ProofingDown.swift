//
//  ProofingDown.swift
//  DistilleryCalculator
//
//  Created by EMIL SANTOS on 9/28/17.
//  Copyright © 2017 EMIL SANTOS. All rights reserved.
//
import Foundation
import UIKit

class ProofingDown: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Total_Label: UILabel!
    
    @IBOutlet weak var Volume: UITextField!
    @IBOutlet weak var currentABV: UITextField!
    @IBOutlet weak var desireABV: UITextField!
    
    @IBAction func calculateButton(_ sender: Any) {
        

        
        if !(Volume.text!.isnumberordouble && currentABV.text!.isnumberordouble && desireABV.text!.isnumberordouble){
            Total_Label.textColor = UIColor.red
            Total_Label.font = Total_Label.font.withSize(20)
            Total_Label.text = "Must enter valid numbers"
        }else{
            Total_Label.font = Total_Label.font.withSize(40)
            Total_Label.textColor = UIColor.white
            var total: Float = Float(Volume.text!)! * ((Float(currentABV.text!)!/Float(desireABV.text!)!) - 1)
            total = Float(round(1000*total)/1000)
            Total_Label.text = "\(total)" + " L"
            UserDefaults.standard.set(Total_Label.text, forKey: "totalLabelPD")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Volume.keyboardType = UIKeyboardType.decimalPad
        currentABV.keyboardType = UIKeyboardType.decimalPad
        desireABV.keyboardType = UIKeyboardType.decimalPad
        
        self.Volume.delegate = self
        self.currentABV.delegate = self
        self.desireABV.delegate = self
        
        Volume.inputAccessoryView = UIToolbar()
        currentABV.inputAccessoryView = UIToolbar()
        desireABV.inputAccessoryView = UIToolbar()
        
        Volume.placeholder = "0"
        currentABV.placeholder = "0"
        desireABV.placeholder = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "totalLabelPD") as? String
        {
            Total_Label.text = x
        }
    }
}

extension String  {
    var isnumberordouble: Bool { return Double(self) != nil }
}
