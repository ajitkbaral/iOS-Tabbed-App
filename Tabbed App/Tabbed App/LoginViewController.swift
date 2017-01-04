//
//  LoginViewController.swift
//  Tabbed App
//
//  Created by Ajit Kumar Baral on 1/4/17.
//  Copyright © 2017 Ajit Kumar Baral. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    
    @IBAction func buttonLogin(_ sender: UIButton) {
        
        textFieldEmail.resignFirstResponder()
        textFieldPassword.resignFirstResponder()
        
        if(!checkEmptyFields()){
            if(textFieldEmail.text! == "email"&&textFieldPassword.text! == "password"){
                
                    self.performSegue(withIdentifier: "loginToHome", sender: self)
            }else{
                alert(title: "Incorrect Credentials", message: "Please enter the email and password correctly.")
            }
            
        }
        else{
            alert(title: "Empty Fields", message: "Please enter email and password.")
        }
        
    }
    
    func checkEmptyFields()-> Bool{
        let email = textFieldEmail.text!
        let password = textFieldPassword.text!
        var check : Bool = true;
        
        if(!email.isEmpty && !password.isEmpty){
            check = false;
        }
        
        return check;
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func alert(title : String, message : String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    

    
}

