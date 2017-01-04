//
//  FirstViewController.swift
//  Tabbed App
//
//  Created by Ajit Kumar Baral on 1/3/17.
//  Copyright © 2017 Ajit Kumar Baral. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldName: UITextField!

    @IBOutlet weak var textFieldAddress: UITextField!
    
    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var textFieldPhone: UITextField!
    
    
    @IBAction func btnSaveClicked(_ sender: UIButton) {
        
        //removing the foucs form the keybords that toggles
        
        textFieldName.resignFirstResponder()
        textFieldAddress.resignFirstResponder()
        textFieldEmail.resignFirstResponder()
        textFieldPhone.resignFirstResponder()
        
        
        let name = textFieldName.text!
        let address = textFieldAddress.text!
        let email = textFieldEmail.text!
        let phone = textFieldPhone.text!
        
        alert(title: "Your Entries", message: "Name: \(name) \n Address: \(address) \n Email: \(email) \n Phone \(phone)")
        
    }
    
    //Triggered when clicked anywhere in the main view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //display the alerts
    func alert(title : String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:
            { (action : UIAlertAction) in alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        
        let segmentTitle = sender.titleForSegment(at: sender.selectedSegmentIndex)!
        
        alert(title: "\(segmentTitle)", message: "You have clicked in the \(segmentTitle) segment")
    }

}

