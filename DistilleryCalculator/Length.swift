//
//  Length.swift
//  DistilleryCalculator
//
//  Created by emil on 10/10/19.
//  Copyright © 2019 EMIL SANTOS. All rights reserved.
//

import UIKit

class Length: UIViewController {

    @IBOutlet weak var lengthPicker: UIPickerView!
    @IBOutlet weak var userInputValue: UITextField!
    @IBOutlet weak var conversionLabel: UILabel!
    
    var dataSource:[String] = ["kilometer","meter","centimeter","mile","yard","foot","inch"]
    var dataSource2:[String] = ["kilometer","meter","centimeter","mile","yard","foot","inch"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userInputValue.keyboardType = UIKeyboardType.decimalPad
        userInputValue.text = ""
        lengthPicker.dataSource = self
        lengthPicker.delegate = self
    }
    
    @IBAction func textFieldEditingChanged(_ sender: Any) {
        let unit = dataSource[lengthPicker.selectedRow(inComponent: 0)]
        let unit2 = dataSource2[lengthPicker.selectedRow(inComponent: 1)]
                         conversionLabel.font = conversionLabel.font.withSize(30)
        conversionLabel.textColor = UIColor.black
        var answer: Float = 0.0
        
         if(userInputValue.text!.isnumberordouble){
         switch unit{
         case "kilometer":
             switch unit2{
             case "kilometer":
                 answer = Float(userInputValue.text!)!
             case "meter":
                 answer = Float(userInputValue.text!)!*1000
             case "centimeter":
                 answer = Float(userInputValue.text!)!*100000
             case "mile":
                answer = Float(userInputValue.text!)!*0.621371
             case "yard":
                answer = Float(userInputValue.text!)!*1093.61
             case "foot":
                answer = Float(userInputValue.text!)!*3280.84
             case "inch":
                answer = Float(userInputValue.text!)!*39370.1
             default:
                 answer = 0.0
             }
         case "meter":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.001
            case "meter":
                answer = Float(userInputValue.text!)!
            case "centimeter":
                answer = Float(userInputValue.text!)!*100
            case "mile":
                answer = Float(userInputValue.text!)!*0.000621371
            case "yard":
                answer = Float(userInputValue.text!)!*1.09361
            case "foot":
                answer = Float(userInputValue.text!)!*3.28084
            case "inch":
                answer = Float(userInputValue.text!)!*39.3701
            default:
                answer = 0.0
            }
         case "centimeter":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.00001
            case "meter":
                answer = Float(userInputValue.text!)!*0.01
            case "centimeter":
                answer = Float(userInputValue.text!)!
            case "mile":
                answer = Float(userInputValue.text!)!*0.0000062137
            case "yard":
                answer = Float(userInputValue.text!)!*0.0109361
            case "foot":
                answer = Float(userInputValue.text!)!*0.0328084
            case "inch":
                answer = Float(userInputValue.text!)!*0.393701
            default:
                answer = 0.0
            }
         case "mile":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*1.60934
            case "meter":
                answer = Float(userInputValue.text!)!*1609.34
            case "centimeter":
                answer = Float(userInputValue.text!)!*160934
            case "mile":
                answer = Float(userInputValue.text!)!
            case "yard":
                answer = Float(userInputValue.text!)!*1760
            case "foot":
                answer = Float(userInputValue.text!)!*5280
            case "inch":
                answer = Float(userInputValue.text!)!*63360
            default:
                answer = 0.0
            }
         case "yard":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.0009144
            case "meter":
                answer = Float(userInputValue.text!)!*0.9144
            case "centimeter":
                answer = Float(userInputValue.text!)!*160934
            case "mile":
                answer = Float(userInputValue.text!)!*91.44
            case "yard":
                answer = Float(userInputValue.text!)!
            case "foot":
                answer = Float(userInputValue.text!)!*3
            case "inch":
                answer = Float(userInputValue.text!)!*36
            default:
                answer = 0.0
            }
         case "foot":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.0003048
            case "meter":
                answer = Float(userInputValue.text!)!*0.3048
            case "centimeter":
                answer = Float(userInputValue.text!)!*30.48
            case "mile":
                answer = Float(userInputValue.text!)!*0.000189394
            case "yard":
                answer = Float(userInputValue.text!)!*0.333333
            case "foot":
                answer = Float(userInputValue.text!)!
            case "inch":
                answer = Float(userInputValue.text!)!*12
            default:
                answer = 0.0
            }
         case "inch":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.0000254
            case "meter":
                answer = Float(userInputValue.text!)!*0.0254
            case "centimeter":
                answer = Float(userInputValue.text!)!*2.54
            case "mile":
                answer = Float(userInputValue.text!)!*0.000015783
            case "yard":
                answer = Float(userInputValue.text!)!*0.0277778
            case "foot":
                answer = Float(userInputValue.text!)!*0.0833333
            case "inch":
                answer = Float(userInputValue.text!)!
            default:
                answer = 0.0
            }
         default:
             print("hello")
         }
         
         //["Metric ton","US ton","kilogram","gram","milligram","pound","ounce"]
         conversionLabel.text = "\(answer)"
         //
        }else{
                conversionLabel.text = "invalid number"
                conversionLabel.font = conversionLabel.font.withSize(20)
                conversionLabel.textColor = UIColor.red
        }
    }
}

extension Length: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return dataSource.count
        }
        return dataSource2.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return dataSource[row]
        }
        return dataSource2[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        var unit = dataSource[pickerView.selectedRow(inComponent: 0)]
        var unit2 = dataSource2[pickerView.selectedRow(inComponent: 1)]
        conversionLabel.font = conversionLabel.font.withSize(30)
        conversionLabel.textColor = UIColor.black
        
        var answer: Float = 0
        
        
        if component == 0 {
            unit = dataSource[row]
        }else{
            unit2 = dataSource2[row]
        }
        if(userInputValue.text!.isnumberordouble){
         switch unit{
         case "kilometer":
             switch unit2{
             case "kilometer":
                 answer = Float(userInputValue.text!)!
             case "meter":
                 answer = Float(userInputValue.text!)!*1000
             case "centimeter":
                 answer = Float(userInputValue.text!)!*100000
             case "mile":
                answer = Float(userInputValue.text!)!*0.621371
             case "yard":
                answer = Float(userInputValue.text!)!*1093.61
             case "foot":
                answer = Float(userInputValue.text!)!*3280.84
             case "inch":
                answer = Float(userInputValue.text!)!*39370.1
             default:
                 answer = 0.0
             }
         case "meter":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.001
            case "meter":
                answer = Float(userInputValue.text!)!
            case "centimeter":
                answer = Float(userInputValue.text!)!*100
            case "mile":
                answer = Float(userInputValue.text!)!*0.000621371
            case "yard":
                answer = Float(userInputValue.text!)!*1.09361
            case "foot":
                answer = Float(userInputValue.text!)!*3.28084
            case "inch":
                answer = Float(userInputValue.text!)!*39.3701
            default:
                answer = 0.0
            }
         case "centimeter":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.00001
            case "meter":
                answer = Float(userInputValue.text!)!*0.01
            case "centimeter":
                answer = Float(userInputValue.text!)!
            case "mile":
                answer = Float(userInputValue.text!)!*0.0000062137
            case "yard":
                answer = Float(userInputValue.text!)!*0.0109361
            case "foot":
                answer = Float(userInputValue.text!)!*0.0328084
            case "inch":
                answer = Float(userInputValue.text!)!*0.393701
            default:
                answer = 0.0
            }
         case "mile":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*1.60934
            case "meter":
                answer = Float(userInputValue.text!)!*1609.34
            case "centimeter":
                answer = Float(userInputValue.text!)!*160934
            case "mile":
                answer = Float(userInputValue.text!)!
            case "yard":
                answer = Float(userInputValue.text!)!*1760
            case "foot":
                answer = Float(userInputValue.text!)!*5280
            case "inch":
                answer = Float(userInputValue.text!)!*63360
            default:
                answer = 0.0
            }
         case "yard":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.0009144
            case "meter":
                answer = Float(userInputValue.text!)!*0.9144
            case "centimeter":
                answer = Float(userInputValue.text!)!*160934
            case "mile":
                answer = Float(userInputValue.text!)!*91.44
            case "yard":
                answer = Float(userInputValue.text!)!
            case "foot":
                answer = Float(userInputValue.text!)!*3
            case "inch":
                answer = Float(userInputValue.text!)!*36
            default:
                answer = 0.0
            }
         case "foot":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.0003048
            case "meter":
                answer = Float(userInputValue.text!)!*0.3048
            case "centimeter":
                answer = Float(userInputValue.text!)!*30.48
            case "mile":
                answer = Float(userInputValue.text!)!*0.000189394
            case "yard":
                answer = Float(userInputValue.text!)!*0.333333
            case "foot":
                answer = Float(userInputValue.text!)!
            case "inch":
                answer = Float(userInputValue.text!)!*12
            default:
                answer = 0.0
            }
         case "inch":
            switch unit2{
            case "kilometer":
                answer = Float(userInputValue.text!)!*0.0000254
            case "meter":
                answer = Float(userInputValue.text!)!*0.0254
            case "centimeter":
                answer = Float(userInputValue.text!)!*2.54
            case "mile":
                answer = Float(userInputValue.text!)!*0.000015783
            case "yard":
                answer = Float(userInputValue.text!)!*0.0277778
            case "foot":
                answer = Float(userInputValue.text!)!*0.0833333
            case "inch":
                answer = Float(userInputValue.text!)!
            default:
                answer = 0.0
            }
         default:
             print("hello")
         }
         
         //["Metric ton","US ton","kilogram","gram","milligram","pound","ounce"]
         conversionLabel.text = "\(answer)"
         }else{

         }
    }
    
    
}

