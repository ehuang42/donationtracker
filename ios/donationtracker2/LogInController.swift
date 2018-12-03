//
//  f.swift
//  donationtracker2
//
//  Created by Eva Huang on 12/3/18.
//  Copyright © 2018 Eva Huang. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        var shouldPerform = true
        if identifier == "loginToHome" {
            if let email = emailField.text, email.isEmpty {
                shouldPerform = false;
            }
            
            if let password = passwordField.text, password.isEmpty || password.count < 6 {
                shouldPerform = false;
            }
        }
        return shouldPerform
    }
    
    @IBAction func loginAction(_ sender: Any?) {
        
        //TODO: Actually validate password
        if let email = emailField.text, !email.isEmpty, let password = passwordField.text, password.count >= 6 {
            Auth.auth().signIn(withEmail: email, password: password, completion: nil)
            //self.performSegue(withIdentifier: "loginToHome", sender: self)
        }
        
        //TODO: Make alerts work, fix logic
        if let email = emailField.text, email.isEmpty {
            _ = UIAlertController(title: "E-mail is empty", message: "Please fill in a valid e-mail.", preferredStyle: .alert)
        }
        
        if let password = passwordField.text, password.isEmpty || password.count < 6 {
            _ = UIAlertController(title: "Password is invalid", message: "Please fill in the correct password.", preferredStyle: .alert)
        }
        
    }
}
