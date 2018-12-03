//
//  SingUpViewController.swift
//  donationtracker2
//
//  Created by Eva Huang on 12/3/18.
//  Copyright © 2018 Eva Huang. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        role.text = dataSource[row]
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    
    private let dataSource = ["User","Manager","Location Employee","Admin"]

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var role: UILabel!
    @IBOutlet weak var rolePicker: UIPickerView!
    @IBOutlet weak var signupButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.delegate = self
        passwordField.delegate = self
        rolePicker.delegate = self
        rolePicker.dataSource = self
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        var shouldPerform = true
        if identifier == "signupToHome" {
            if let email = emailField.text, email.isEmpty {
                shouldPerform = false;
            }
            
            if let password = passwordField.text, password.isEmpty || password.count < 6 {
                shouldPerform = false;
            }
        }
        return shouldPerform
    }
    
    @IBAction func signUpAction(_ sender: Any?) {
        
        
        if let email = emailField.text, !email.isEmpty, let password = passwordField.text, password.count >= 6 {
            Auth.auth().createUser(withEmail: email, password: password, completion: nil)
        }
        
        if let email = emailField.text, email.isEmpty {
            _ = UIAlertController(title: "E-mail is empty", message: "Please fill in a valid e-mail.", preferredStyle: .alert)
        }
        
        if let password = passwordField.text, password.isEmpty || password.count < 6 {
            _ = UIAlertController(title: "Password is invalid", message: "Please fill in a password with a minimum of 6 characters.", preferredStyle: .alert)
        }
        
    }
    
}
