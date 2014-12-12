//
//  loginViewController.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 12/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
   
    
    @IBAction func checkField(sender: UITextField) {
        check()
    }
    
    @IBOutlet weak var logIn: UIButton!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    func check() {
        if(nameField.text != "" && passwordField.text != "") {
            logIn.enabled = true
        } else {
            logIn.enabled = false
        }
    }
    
    @IBAction func logInButtonTapped() {
    }
    
    @IBAction func registerButtonTapped() {
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
