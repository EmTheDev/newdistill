//
//  Weight.swift
//  DistilleryCalculator
//
//  Created by emil on 10/8/19.
//  Copyright © 2019 EMIL SANTOS. All rights reserved.
//

import UIKit

class Weight: UIViewController {

    @IBOutlet weak var weightPicker: UIPickerView!
    @IBOutlet weak var userInputValue: UITextField!
    @IBOutlet weak var conversionLabel: UILabel!
    
    var dataSource:[String] = ["Metric ton","US ton","kilogram","gram","pound","ounce"]
    var dataSource2:[String] = ["Metric ton","US ton","kilogram","gram","pound","ounce"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userInputValue.keyboardType = UIKeyboardType.decimalPad
        userInputValue.text = ""
        weightPicker.dataSource = self
        weightPicker.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldEditingChanged(_ sender: Any) {
        let unit = dataSource[weightPicker.selectedRow(inComponent: 0)]
        let unit2 = dataSource2[weightPicker.selectedRow(inComponent: 1)]
                         conversionLabel.font = conversionLabel.font.withSize(30)
        conversionLabel.textColor = UIColor.black
        var answer: Float = 0.0
        
         if(userInputValue.text!.isnumberordouble){
         switch unit{
         case "Metric ton":
             switch unit2{
             case "Metric ton":
                 answer = Float(userInputValue.text!)!
             case "US ton":
                 answer = Float(userInputValue.text!)!*1.10231
             case "kilogram":
                 answer = Float(userInputValue.text!)!*1000
             case "gram":
                 answer = Float(userInputValue.text!)!*1000000
             case "pound":
                 answer = Float(userInputValue.text!)!*2204.62
             case "ounce":
                 answer = Float(userInputValue.text!)!*35274
             default:
                 answer = 0.0
             }
             //["Metric ton","US ton","kilogram","gram","milligram","pound","ounce"]
         case "US ton":
             switch unit2{
             case "Metric ton":
                 answer = Float(userInputValue.text!)!*0.907185
             case "US ton":
                 answer = Float(userInputValue.text!)!
             case "kilogram":
                 answer = Float(userInputValue.text!)!*907.185
             case "gram":
                 answer = Float(userInputValue.text!)!*907185
             case "pound":
                 answer = Float(userInputValue.text!)!*2000
             case "ounce":
                 answer = Float(userInputValue.text!)!*32000
             default:
                 answer = 0.0
             }
         case "kilogram":
             switch unit2{
             case "Metric ton":
                 answer = Float(userInputValue.text!)!*0.001
             case "US ton":
                 answer = Float(userInputValue.text!)!*0.00110231
             case "kilogram":
                 answer = Float(userInputValue.text!)!
             case "gram":
                 answer = Float(userInputValue.text!)!*1000
             case "pound":
                 answer = Float(userInputValue.text!)!*2.20462
             case "ounce":
                 answer = Float(userInputValue.text!)!*35.274
             default:
                 answer = 0.0
             }
         case "gram":
             switch unit2{
             case "Metric ton":
                 answer = Float(userInputValue.text!)!*0.000001
             case "US ton":
                 answer = Float(userInputValue.text!)!*0.0000011023
             case "kilogram":
                 answer = Float(userInputValue.text!)!*0.001
             case "gram":
                 answer = Float(userInputValue.text!)!*1
             case "pound":
                 answer = Float(userInputValue.text!)!*0.00220462
             case "ounce":
                 answer = Float(userInputValue.text!)!*0.035274
             default:
                 answer = 0.0
             }
         case "pound":
             switch unit2{
             case "Metric ton":
                 answer = Float(userInputValue.text!)!*0.000453592
             case "US ton":
                 answer = Float(userInputValue.text!)!*0.0005
             case "kilogram":
                 answer = Float(userInputValue.text!)!*0.453592
             case "gram":
                 answer = Float(userInputValue.text!)!*453.592
             case "pound":
                 answer = Float(userInputValue.text!)!
             case "ounce":
                 answer = Float(userInputValue.text!)!*16
             default:
                 answer = 0.0
             }
         case "ounce":
             switch unit2{
             case "Metric ton":
                 answer = Float(userInputValue.text!)!*0.00002835
             case "US ton":
                 answer = Float(userInputValue.text!)!*0.00003125
             case "kilogram":
                 answer = Float(userInputValue.text!)!*0.0283495
             case "gram":
                 answer = Float(userInputValue.text!)!*28.3495
             case "pound":
                 answer = Float(userInputValue.text!)!*0.0625
             case "ounce":
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

extension Weight: UIPickerViewDelegate, UIPickerViewDataSource {
    
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
        case "Metric ton":
            switch unit2{
            case "Metric ton":
                answer = Float(userInputValue.text!)!
            case "US ton":
                answer = Float(userInputValue.text!)!*1.10231
            case "kilogram":
                answer = Float(userInputValue.text!)!*1000
            case "gram":
                answer = Float(userInputValue.text!)!*1000000
            case "pound":
                answer = Float(userInputValue.text!)!*2204.62
            case "ounce":
                answer = Float(userInputValue.text!)!*35274
            default:
                answer = 0.0
            }
            //["Metric ton","US ton","kilogram","gram","milligram","pound","ounce"]
        case "US ton":
            switch unit2{
            case "Metric ton":
                answer = Float(userInputValue.text!)!*0.907185
            case "US ton":
                answer = Float(userInputValue.text!)!
            case "kilogram":
                answer = Float(userInputValue.text!)!*907.185
            case "gram":
                answer = Float(userInputValue.text!)!*907185
            case "pound":
                answer = Float(userInputValue.text!)!*2000
            case "ounce":
                answer = Float(userInputValue.text!)!*32000
            default:
                answer = 0.0
            }
        case "kilogram":
            switch unit2{
            case "Metric ton":
                answer = Float(userInputValue.text!)!*0.001
            case "US ton":
                answer = Float(userInputValue.text!)!*0.00110231
            case "kilogram":
                answer = Float(userInputValue.text!)!
            case "gram":
                answer = Float(userInputValue.text!)!*1000
            case "pound":
                answer = Float(userInputValue.text!)!*2.20462
            case "ounce":
                answer = Float(userInputValue.text!)!*35.274
            default:
                answer = 0.0
            }
        case "gram":
            switch unit2{
            case "Metric ton":
                answer = Float(userInputValue.text!)!*0.000001
            case "US ton":
                answer = Float(userInputValue.text!)!*0.0000011023
            case "kilogram":
                answer = Float(userInputValue.text!)!*0.001
            case "gram":
                answer = Float(userInputValue.text!)!*1
            case "pound":
                answer = Float(userInputValue.text!)!*0.00220462
            case "ounce":
                answer = Float(userInputValue.text!)!*0.035274
            default:
                answer = 0.0
            }
        case "pound":
            switch unit2{
            case "Metric ton":
                answer = Float(userInputValue.text!)!*0.000453592
            case "US ton":
                answer = Float(userInputValue.text!)!*0.0005
            case "kilogram":
                answer = Float(userInputValue.text!)!*0.453592
            case "gram":
                answer = Float(userInputValue.text!)!*453.592
            case "pound":
                answer = Float(userInputValue.text!)!
            case "ounce":
                answer = Float(userInputValue.text!)!*16
            default:
                answer = 0.0
            }
        case "ounce":
            switch unit2{
            case "Metric ton":
                answer = Float(userInputValue.text!)!*0.00002835
            case "US ton":
                answer = Float(userInputValue.text!)!*0.00003125
            case "kilogram":
                answer = Float(userInputValue.text!)!*0.0283495
            case "gram":
                answer = Float(userInputValue.text!)!*28.3495
            case "pound":
                answer = Float(userInputValue.text!)!*0.0625
            case "ounce":
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

        }
    }
    
    
}

