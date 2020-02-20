//
//  VolumeFromWeight.swift
//  DistilleryCalculator
//
//  Created by EMIL SANTOS on 10/3/17.
//  Copyright © 2017 EMIL SANTOS. All rights reserved.
//

import UIKit

class VolumeFromWeight: UIViewController {

    
    @IBOutlet weak var Weight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        Weight.keyboardType = UIKeyboardType.decimalPad
        Weight.inputAccessoryView = UIToolbar()
        Weight.placeholder = "0"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
