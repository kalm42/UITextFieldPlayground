//
//  ViewController.swift
//  TextFieldPlayground
//
//  Created by Kyle Melton on 7/23/17.
//  Copyright © 2017 Kyle Melton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailField: FancyTextField!
    @IBOutlet weak var passwordField: FancyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if emailField.isFirstResponder {
            //do validation
            passwordField.becomeFirstResponder()
        } else {
            passwordField.resignFirstResponder()
            login()
        }
        return false
    }
    func login() {
        // fancy login functions go here
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        //do validation
        login()
    }
    @IBAction func didTapScreen(_ sender: Any) {
        if emailField.isFirstResponder {
            emailField.resignFirstResponder()
        } else if passwordField.isFirstResponder {
            passwordField.resignFirstResponder()
        }
    }
    

}

