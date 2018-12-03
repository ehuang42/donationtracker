//
//  HomeViewController.swift
//  donationtracker2
//
//  Created by Eva Huang on 12/3/18.
//  Copyright © 2018 Eva Huang. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        // TODO: Exception handling
        let _ = try? Auth.auth().signOut()
    }

}
