//
//  AlcoholWithOGBrixCorrection.swift
//  DistilleryCalculator
//
//  Created by emil on 2/24/20.
//  Copyright © 2020 EMIL SANTOS. All rights reserved.
//

import UIKit

class AlcoholWithOGBrixCorrection: UIViewController{
    
    @IBOutlet weak var OGBrix: UITextField!
    @IBOutlet weak var ApparentBrix: UITextField!
    @IBOutlet weak var Temp: UITextField!
    
    @IBOutlet weak var ActualSG: UILabel!
    @IBOutlet weak var ActualBrix: UILabel!
    
    var temperatureTemp: String = "0"
    
    @IBAction func CalculateButton(_ sender: Any) {
        
        if !(OGBrix.text!.isnumberordouble && ApparentBrix.text!.isnumberordouble && (Temp.text!.isnumberordouble || Temp.text! == "")){
            ActualSG.font = ActualSG.font.withSize(20)
            ActualSG.textColor = UIColor.red
            ActualSG.text = "Must enter valid numbers"
            ActualBrix.text = "0"
        }else{
            ActualSG.textColor = UIColor.white
            ActualSG.font = ActualSG.font.withSize(40)

            if(Temp.text == ""){ temperatureTemp = "0" }else{ temperatureTemp = Temp.text!}
            let ogBrix: Float = Float(OGBrix.text!)!
            let apparentBrix: Float = Float(ApparentBrix.text!)!
            let tmp: Float = Float(temperatureTemp)!
            
            let total1: Float = 1.001843-0.002318474*(Float(OGBrix.text!)!)
            let total2: Float = 0.000007775*(ogBrix*ogBrix)
            let total3: Float = 0.000000034*(ogBrix*ogBrix*ogBrix)
            let total4: Float = 0.00574*apparentBrix
            let total5: Float = 0.00003344*(apparentBrix*apparentBrix)
            let total6: Float = 0.000000086*(Float(apparentBrix*apparentBrix*apparentBrix))
            let total7: Float = 1.313454-0.132674*tmp
            let total8: Float = 0.002057793*(tmp*tmp)
            let total9: Float = 0.000002627634*(tmp*tmp*tmp)
            let sgTotal = total1 - total2 - total3 + total4 + total5 + total6 + (total7 + total8 - total9)*0.001
            
            
            let brixTotal1 = -676.67+1286.4*sgTotal
            let brixTotal2 = -800.47*(sgTotal*sgTotal)
            let brixTotal3 = 190.74*(sgTotal*sgTotal*sgTotal)
            let finalBrixTotal = brixTotal1 + brixTotal2 + brixTotal3
            //UserDefaults.standard.set(Total_Label.text, forKey: "totalLabelPG")
            ActualSG.text = String(sgTotal)
            ActualBrix.text = String(finalBrixTotal)
            
            
            
            
            
            
        }
    }
}


