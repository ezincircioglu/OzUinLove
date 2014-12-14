//
//  loginViewController.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 12/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
   
    

    
    @IBOutlet weak var logIn: UIButton!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func logInButtonTapped() {
        var username:NSString = nameField.text
        var password:NSString = passwordField.text
        
        if ( username.isEqualToString("") || password.isEqualToString("") ) {
            
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Sign in Failed!"
            alertView.message = "Please enter Username and Password"
            alertView.delegate = self
            alertView.addButtonWithTitle("OK")
            alertView.show()
        } else {
            
            var post:NSString = "username=\(username)&password=\(password)"
            
            NSLog("PostData: %@",post);
            
           
                   }
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
