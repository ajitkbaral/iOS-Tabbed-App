//
//  SecondViewController.swift
//  Tabbed App
//
//  Created by Ajit Kumar Baral on 1/3/17.
//  Copyright © 2017 Ajit Kumar Baral. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var actionName: UILabel!

    @IBOutlet weak var response: UILabel!
    
    var buttonClick : Int = 0
    
    var stepperClick : Int = 0
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        var message : String
        
        if(sender.isOn){
            message = "ON"
        }
        else{
            message = "OFF"
        }
        
        responesToText(nameOfAction: "Switch", response: message)
        
        
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        let sliderText : Float = sender.value
        responesToText(nameOfAction: "Slider", response: "\(lroundf(sliderText))")
    }
    
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        let stepperValue = sender.value
        responesToText(nameOfAction: "Stepper", response: "\(stepperValue)")
    }
    
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        buttonClick+=1
        responesToText(nameOfAction: "Button", response: "Clicked \(buttonClick)")
    }
    
    
    func responesToText(nameOfAction : String,
                        response : String){
        
        self.actionName.text = nameOfAction
        self.response.text = response
        
    }
    
}

