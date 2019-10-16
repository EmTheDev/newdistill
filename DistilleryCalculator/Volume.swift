//
//  Volume.swift
//  DistilleryCalculator
//
//  Created by emil on 10/14/19.
//  Copyright © 2019 EMIL SANTOS. All rights reserved.
//

import UIKit

class Volume: UIViewController {


    @IBOutlet weak var volumePicker: UIPickerView!
    @IBOutlet weak var userInputValue: UITextField!
    @IBOutlet weak var conversionLabel: UILabel!
    
    var dataSource:[String] = ["US liquid gallon","US liquid quart","US liquid pint","US fluid ounce","US tablespoon","US teaspoon","cubic meter","Liter","Milliliter","cubic foot","cubic inch"]
    var dataSource2:[String] = ["US liquid gallon","US liquid quart","US liquid pint","US fluid ounce","US tablespoon","US teaspoon","cubic meter","Liter","Milliliter","cubic foot","cubic inch"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userInputValue.keyboardType = UIKeyboardType.decimalPad
        userInputValue.text = ""
        volumePicker.dataSource = self
        volumePicker.delegate = self
    }

    @IBAction func textFieldEditingChanged(_ sender: Any) {
        let unit = dataSource[volumePicker.selectedRow(inComponent: 0)]
        let unit2 = dataSource2[volumePicker.selectedRow(inComponent: 1)]
                         conversionLabel.font = conversionLabel.font.withSize(30)
        conversionLabel.textColor = UIColor.black
        var answer: Float = 0.0
        
         if(userInputValue.text!.isnumberordouble){
         switch unit{
         case "US liquid gallon":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*4
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*8
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*128
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*256
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*768
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.00378541
            case "Liter":
                answer = Float(userInputValue.text!)!*3.78541
            case "Milliliter":
                answer = Float(userInputValue.text!)!*3785.41
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.133681
            case "cubic inch":
                answer = Float(userInputValue.text!)!*231
            default:
                answer = 0.0
            }
         case "US liquid quart":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.25
            case "US liquid quart":
                answer = Float(userInputValue.text!)!
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*2
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*32
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*64
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*192
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000946353
            case "Liter":
                answer = Float(userInputValue.text!)!*0.946353
            case "Milliliter":
                answer = Float(userInputValue.text!)!*946.353
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.0334201
            case "cubic inch":
                answer = Float(userInputValue.text!)!*57.75
            default:
                answer = 0.0
            }
         case "US liquid pint":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.125
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.5
            case "US liquid pint":
                answer = Float(userInputValue.text!)!
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*16
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*32
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*96
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000473176
            case "Liter":
                answer = Float(userInputValue.text!)!*0.473176
            case "Milliliter":
                answer = Float(userInputValue.text!)!*473.176
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.0167101
            case "cubic inch":
                answer = Float(userInputValue.text!)!*28.875
            default:
                answer = 0.0
            }
         case "US fluid ounce":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.0078125
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.03125
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.0625
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*2
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*6
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000029574
            case "Liter":
                answer = Float(userInputValue.text!)!*0.0295735
            case "Milliliter":
                answer = Float(userInputValue.text!)!*29.5735
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.00104438
            case "cubic inch":
                answer = Float(userInputValue.text!)!*1.80469
            default:
                answer = 0.0
            }
         case "US tablespoon":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.00390625
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.015625
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.03125
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*0.5
            case "US tablespoon":
                answer = Float(userInputValue.text!)!//End Here
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*3
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000014787
            case "Liter":
                answer = Float(userInputValue.text!)!*0.0147868
            case "Milliliter":
                answer = Float(userInputValue.text!)!*14.7868
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.00052219
            case "cubic inch":
                answer = Float(userInputValue.text!)!*0.902344
            default:
                answer = 0.0
            }
         case "US teaspoon":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.00130208
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.00520833
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.0104167
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*0.166667
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*0.33333
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*3
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000014787
            case "Liter":
                answer = Float(userInputValue.text!)!*0.0147868
            case "Milliliter":
                answer = Float(userInputValue.text!)!*14.7868
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.00052219
            case "cubic inch":
                answer = Float(userInputValue.text!)!*0.902344
            default:
                answer = 0.0
            }
         case "cubic meter":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*264.172
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*1056.69
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*2113.38
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*33814
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*67628
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*202884
            case "cubic meter":
                answer = Float(userInputValue.text!)!
            case "Liter":
                answer = Float(userInputValue.text!)!*1000
            case "Milliliter":
                answer = Float(userInputValue.text!)!*1000000
            case "cubic foot":
                answer = Float(userInputValue.text!)!*35.3147
            case "cubic inch":
                answer = Float(userInputValue.text!)!*61023.7
            default:
                answer = 0.0
            }
         case "Liter":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.264172
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*1.05669
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*2.11338
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*33.814
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*67.628
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*202.884
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.001
            case "Liter":
                answer = Float(userInputValue.text!)!
            case "Milliliter":
                answer = Float(userInputValue.text!)!*1000
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.0353147
            case "cubic inch":
                answer = Float(userInputValue.text!)!*61.0237
            default:
                answer = 0.0
            }
         case "Milliliter":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.000264172
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.00105669
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.00211338
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*0.033814
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*0.067628
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*0.202884
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000001
            case "Liter":
                answer = Float(userInputValue.text!)!*0.001
            case "Milliliter":
                answer = Float(userInputValue.text!)!
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.0000353147
            case "cubic inch":
                answer = Float(userInputValue.text!)!*0.0610237
            default:
                answer = 0.0
            }
         case "cubic foot":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*7.48052
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*29.9221
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*59.8442
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*957.506
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*1915.01
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*5745.04
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.0283168
            case "Liter":
                answer = Float(userInputValue.text!)!*28.3168
            case "Milliliter":
                answer = Float(userInputValue.text!)!*28316.8
            case "cubic foot":
                answer = Float(userInputValue.text!)!
            case "cubic inch":
                answer = Float(userInputValue.text!)!*1728
            default:
                answer = 0.0
            }
         case "cubic inch":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.004329
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.017316
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.034632
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*0.554113
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*1.10823
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*3.32468
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.0016387
            case "Liter":
                answer = Float(userInputValue.text!)!*0.0163871
            case "Milliliter":
                answer = Float(userInputValue.text!)!*16.3871
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.000578704
            case "cubic inch":
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

extension Volume: UIPickerViewDelegate, UIPickerViewDataSource {
    
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
         case "US liquid gallon":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*4
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*8
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*128
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*256
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*768
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.00378541
            case "Liter":
                answer = Float(userInputValue.text!)!*3.78541
            case "Milliliter":
                answer = Float(userInputValue.text!)!*3785.41
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.133681
            case "cubic inch":
                answer = Float(userInputValue.text!)!*231
            default:
                answer = 0.0
            }
         case "US liquid quart":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.25
            case "US liquid quart":
                answer = Float(userInputValue.text!)!
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*2
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*32
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*64
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*192
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000946353
            case "Liter":
                answer = Float(userInputValue.text!)!*0.946353
            case "Milliliter":
                answer = Float(userInputValue.text!)!*946.353
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.0334201
            case "cubic inch":
                answer = Float(userInputValue.text!)!*57.75
            default:
                answer = 0.0
            }
         case "US liquid pint":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.125
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.5
            case "US liquid pint":
                answer = Float(userInputValue.text!)!
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*16
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*32
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*96
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000473176
            case "Liter":
                answer = Float(userInputValue.text!)!*0.473176
            case "Milliliter":
                answer = Float(userInputValue.text!)!*473.176
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.0167101
            case "cubic inch":
                answer = Float(userInputValue.text!)!*28.875
            default:
                answer = 0.0
            }
         case "US fluid ounce":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.0078125
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.03125
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.0625
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*2
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*6
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000029574
            case "Liter":
                answer = Float(userInputValue.text!)!*0.0295735
            case "Milliliter":
                answer = Float(userInputValue.text!)!*29.5735
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.00104438
            case "cubic inch":
                answer = Float(userInputValue.text!)!*1.80469
            default:
                answer = 0.0
            }
         case "US tablespoon":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.00390625
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.015625
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.03125
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*0.5
            case "US tablespoon":
                answer = Float(userInputValue.text!)!//End Here
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*3
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000014787
            case "Liter":
                answer = Float(userInputValue.text!)!*0.0147868
            case "Milliliter":
                answer = Float(userInputValue.text!)!*14.7868
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.00052219
            case "cubic inch":
                answer = Float(userInputValue.text!)!*0.902344
            default:
                answer = 0.0
            }
         case "US teaspoon":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.00130208
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.00520833
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.0104167
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*0.166667
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*0.33333
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*3
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000014787
            case "Liter":
                answer = Float(userInputValue.text!)!*0.0147868
            case "Milliliter":
                answer = Float(userInputValue.text!)!*14.7868
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.00052219
            case "cubic inch":
                answer = Float(userInputValue.text!)!*0.902344
            default:
                answer = 0.0
            }
         case "cubic meter":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*264.172
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*1056.69
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*2113.38
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*33814
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*67628
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*202884
            case "cubic meter":
                answer = Float(userInputValue.text!)!
            case "Liter":
                answer = Float(userInputValue.text!)!*1000
            case "Milliliter":
                answer = Float(userInputValue.text!)!*1000000
            case "cubic foot":
                answer = Float(userInputValue.text!)!*35.3147
            case "cubic inch":
                answer = Float(userInputValue.text!)!*61023.7
            default:
                answer = 0.0
            }
         case "Liter":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.264172
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*1.05669
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*2.11338
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*33.814
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*67.628
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*202.884
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.001
            case "Liter":
                answer = Float(userInputValue.text!)!
            case "Milliliter":
                answer = Float(userInputValue.text!)!*1000
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.0353147
            case "cubic inch":
                answer = Float(userInputValue.text!)!*61.0237
            default:
                answer = 0.0
            }
         case "Milliliter":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.000264172
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.00105669
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.00211338
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*0.033814
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*0.067628
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*0.202884
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.000001
            case "Liter":
                answer = Float(userInputValue.text!)!*0.001
            case "Milliliter":
                answer = Float(userInputValue.text!)!
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.0000353147
            case "cubic inch":
                answer = Float(userInputValue.text!)!*0.0610237
            default:
                answer = 0.0
            }
         case "cubic foot":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*7.48052
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*29.9221
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*59.8442
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*957.506
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*1915.01
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*5745.04
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.0283168
            case "Liter":
                answer = Float(userInputValue.text!)!*28.3168
            case "Milliliter":
                answer = Float(userInputValue.text!)!*28316.8
            case "cubic foot":
                answer = Float(userInputValue.text!)!
            case "cubic inch":
                answer = Float(userInputValue.text!)!*1728
            default:
                answer = 0.0
            }
         case "cubic inch":
            switch unit2{
            case "US liquid gallon":
                answer = Float(userInputValue.text!)!*0.004329
            case "US liquid quart":
                answer = Float(userInputValue.text!)!*0.017316
            case "US liquid pint":
                answer = Float(userInputValue.text!)!*0.034632
            case "US fluid ounce":
                answer = Float(userInputValue.text!)!*0.554113
            case "US tablespoon":
                answer = Float(userInputValue.text!)!*1.10823
            case "US teaspoon":
                answer = Float(userInputValue.text!)!*3.32468
            case "cubic meter":
                answer = Float(userInputValue.text!)!*0.0016387
            case "Liter":
                answer = Float(userInputValue.text!)!*0.0163871
            case "Milliliter":
                answer = Float(userInputValue.text!)!*16.3871
            case "cubic foot":
                answer = Float(userInputValue.text!)!*0.000578704
            case "cubic inch":
                answer = Float(userInputValue.text!)!
            default:
                answer = 0.0
            }
         default:
             print("hello")
         }
         
         //var dataSource2:[String] = ["US liquid gallon","US liquid quart","US liquid pint","US fluid ounce","US tablespoon","US teaspoon","cubic meter","Liter","Milliliter","cubic foot","cubic inch"]
         conversionLabel.text = "\(answer)"
         }else{

         }
    }
}

