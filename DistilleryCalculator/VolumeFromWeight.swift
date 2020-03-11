//
//  VolumeFromWeight.swift
//  DistilleryCalculator
//
//  Created by EMIL SANTOS on 10/3/17.
//  Copyright © 2017 EMIL SANTOS. All rights reserved.
//

import UIKit

class VolumeFromWeight: UIViewController {

    @IBOutlet weak var inputVolBatch1: UITextField!
    @IBOutlet weak var inputABVBatch1: UITextField!
    @IBOutlet weak var inputVolBatch2: UITextField!
    @IBOutlet weak var inputABVBatch2: UITextField!
    @IBOutlet weak var inputVolBatch3: UITextField!
    @IBOutlet weak var inputABVBatch3: UITextField!
    @IBOutlet weak var inputVolBatch4: UITextField!
    @IBOutlet weak var inputABVBatch4: UITextField!
    
    @IBOutlet weak var volBatch1: UILabel!
    @IBOutlet weak var abvBatch1: UILabel!
    @IBOutlet weak var volbatch2: UILabel!
    @IBOutlet weak var abvBatch2: UILabel!
    @IBOutlet weak var volBatch3: UILabel!
    @IBOutlet weak var abvBatch3: UILabel!
    @IBOutlet weak var volBatch4: UILabel!
    @IBOutlet weak var abvBatch4: UILabel!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func CalculateButton(_ sender: Any) {
        if(inputVolBatch4.text!.isnumberordouble && inputABVBatch4.text!.isnumberordouble){
            if(!inputVolBatch3.text!.isnumberordouble || !inputABVBatch3.text!.isnumberordouble || !inputVolBatch2.text!.isnumberordouble || !inputABVBatch2.text!.isnumberordouble || !inputVolBatch1.text!.isnumberordouble || !inputABVBatch1.text!.isnumberordouble)
            {
                //Error Message
                errorLabel.text = "Please enter values for each field"
                
            }else{
                //calculate 4 and lower!
                volBatch1.text = inputVolBatch1.text!
                abvBatch1.text = inputABVBatch1.text!
                volbatch2.text = String(Float(inputVolBatch2.text!)! - (Float(inputVolBatch1.text!)!))
                abvBatch2.text = String(Float(inputABVBatch2.text!)! - (Float(inputABVBatch1.text!)!))
                volBatch3.text = String(Float(inputVolBatch3.text!)! - (Float(inputVolBatch2.text!)!))
                abvBatch3.text = String(Float(inputABVBatch3.text!)! - (Float(inputABVBatch2.text!)!))
                volBatch4.text = String(Float(inputVolBatch4.text!)! - (Float(inputVolBatch3.text!)!))
                abvBatch4.text = String(Float(inputABVBatch4.text!)! - (Float(inputABVBatch3.text!)!))
            }
            
        }else if (inputVolBatch3.text!.isnumberordouble && inputABVBatch3.text!.isnumberordouble){
            if(!inputVolBatch2.text!.isnumberordouble || !inputVolBatch2.text!.isnumberordouble || !inputVolBatch1.text!.isnumberordouble || !inputVolBatch1.text!.isnumberordouble)
            {
                //Error Message
                errorLabel.text = "Please enter values for each field"
                
            }else{
                //calculate 3 and lower!
                volBatch1.text = inputVolBatch1.text!
                abvBatch1.text = inputABVBatch1.text!
                volbatch2.text = String(Float(inputVolBatch2.text!)! - (Float(inputVolBatch1.text!)!))
                abvBatch2.text = String(Float(inputABVBatch2.text!)! - (Float(inputABVBatch1.text!)!))
                volBatch3.text = String(Float(inputVolBatch3.text!)! - (Float(inputVolBatch2.text!)!))
                abvBatch3.text = String(Float(inputABVBatch3.text!)! - (Float(inputABVBatch2.text!)!))
            }
        }else if (inputVolBatch2.text!.isnumberordouble && inputABVBatch2.text!.isnumberordouble){
            if(!inputVolBatch1.text!.isnumberordouble || !inputVolBatch1.text!.isnumberordouble)
            {
                //ErrorMessage
                errorLabel.text = "Please enter values for each field"
                
            }else{
                //calculate 2 and lower!
                volBatch1.text = inputVolBatch1.text!
                abvBatch1.text = inputABVBatch1.text!
                volbatch2.text = String(Float(inputVolBatch2.text!)! - (Float(inputVolBatch1.text!)!))
                abvBatch2.text = String(Float(inputABVBatch2.text!)! - (Float(inputABVBatch1.text!)!))
            }
        }else{
            errorLabel.text = "Please enter values for each field"
        }
    }
    
    //@IBOutlet weak var Weight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        volBatch1.text = "0";
        abvBatch1.text = "0";
        volbatch2.text = "0";
        abvBatch2.text = "0";
        volBatch3.text = "0";
        abvBatch3.text = "0";
        volBatch4.text = "0";
        abvBatch4.text = "0";
        
        inputVolBatch1.keyboardType = UIKeyboardType.decimalPad
        inputVolBatch1.inputAccessoryView = UIToolbar()
        
        inputABVBatch1.keyboardType = UIKeyboardType.decimalPad
        inputABVBatch1.inputAccessoryView = UIToolbar()
        
        inputVolBatch2.keyboardType = UIKeyboardType.decimalPad
        inputVolBatch2.inputAccessoryView = UIToolbar()
        
        inputABVBatch2.keyboardType = UIKeyboardType.decimalPad
        inputABVBatch2.inputAccessoryView = UIToolbar()
        
        inputVolBatch3.keyboardType = UIKeyboardType.decimalPad
        inputVolBatch3.inputAccessoryView = UIToolbar()
        
        inputABVBatch3.keyboardType = UIKeyboardType.decimalPad
        inputABVBatch3.inputAccessoryView = UIToolbar()
        
        inputVolBatch4.keyboardType = UIKeyboardType.decimalPad
        inputVolBatch4.inputAccessoryView = UIToolbar()
        
        inputABVBatch4.keyboardType = UIKeyboardType.decimalPad
        inputABVBatch4.inputAccessoryView = UIToolbar()
        
        errorLabel.text = "Please enter values for each field"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
