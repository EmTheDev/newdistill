//
//  Temperature.swift
//  DistilleryCalculator
//
//  Created by emil on 10/16/19.
//  Copyright © 2019 EMIL SANTOS. All rights reserved.
//

import UIKit

class Temperature: UIViewController {


    @IBOutlet weak var tempPicker: UIPickerView!
    @IBOutlet weak var userInputValue: UITextField!
    @IBOutlet weak var conversionLabel: UILabel!
    
    var dataSource:[String] = ["Celsius","Fahrenheit","Kelvin"]
    var dataSource2:[String] = ["Celsius","Fahrenheit","Kelvin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userInputValue.keyboardType = UIKeyboardType.decimalPad
        userInputValue.text = ""
        tempPicker.dataSource = self
        tempPicker.delegate = self
    }

    @IBAction func textFieldEditingChanged(_ sender: Any) {
        let unit = dataSource[tempPicker.selectedRow(inComponent: 0)]
        let unit2 = dataSource2[tempPicker.selectedRow(inComponent: 1)]
                         conversionLabel.font = conversionLabel.font.withSize(30)
        conversionLabel.textColor = UIColor.black
        var answer: Float = 0.0
        
         if(userInputValue.text!.isnumberordouble){
         switch unit{
         case "Celsius":
             switch unit2{
             case "Celsius":
                 answer = Float(userInputValue.text!)!
             case "Fahrenheit":
                answer = (Float(userInputValue.text!)!*(9/5)) + 32
             case "Kelvin":
                answer = Float(userInputValue.text!)!+273.15 //Ended Here
             default:
                 answer = 0.0
             }
         case "Fahrenheit":
            switch unit2{
            case "Celsius":
                answer = (Float(userInputValue.text!)!-32)*(5/9)
            case "Fahrenheit":
                answer = Float(userInputValue.text!)!
            case "Kelvin":
                answer = (Float(userInputValue.text!)!-32)*(5/9)+273.15
            default:
                answer = 0.0
            }
         case "Kelvin":
            switch unit2{
            case "Celsius":
                answer = (Float(userInputValue.text!)!-273.15)
            case "Fahrenheit":
                answer = (Float(userInputValue.text!)!-273.15)*(9/5)+32
            case "Kelvin":
                answer = Float(userInputValue.text!)!
            default:
                answer = 0.0
            }
         default:
             print("hello")
         }
        
         conversionLabel.text = "\(answer)"
         //
        }else{
                conversionLabel.text = "invalid number"
                conversionLabel.font = conversionLabel.font.withSize(20)
                conversionLabel.textColor = UIColor.red
        }
    }
}

extension Temperature: UIPickerViewDelegate, UIPickerViewDataSource {
    
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
         case "Celsius":
             switch unit2{
             case "Celsius":
                 answer = Float(userInputValue.text!)!
             case "Fahrenheit":
                answer = (Float(userInputValue.text!)!*(9/5)) + 32
             case "Kelvin":
                answer = Float(userInputValue.text!)!+273.15 //Ended Here
             default:
                 answer = 0.0
             }
         case "Fahrenheit":
            switch unit2{
            case "Celsius":
                answer = (Float(userInputValue.text!)!-32)*(5/9)
            case "Fahrenheit":
                answer = Float(userInputValue.text!)!
            case "Kelvin":
                answer = (Float(userInputValue.text!)!-32)*(5/9)+273.15
            default:
                answer = 0.0
            }
         case "Kelvin":
            switch unit2{
            case "Celsius":
                answer = (Float(userInputValue.text!)!-273.15)
            case "Fahrenheit":
                answer = (Float(userInputValue.text!)!-273.15)*(9/5)+32
            case "Kelvin":
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
