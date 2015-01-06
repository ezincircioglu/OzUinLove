//
//  loginViewController.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 12/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
   
    
    //var acc = Account()
    var member: Member!
    var check = false
    var members: [Member] = []
    
    @IBOutlet weak var logIn: UIButton!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func logInButtonTapped() {
        var temp = nameField.text
        var tempPas = passwordField.text
        check = false
        for var i = 0; i < members.count; ++i  {
            
            if(temp == members[i].userName) {
                if(tempPas == members[i].password) {
                    check = true
                    NSLog("okeydir")
                }
            }
            
        }
            
  
        if ( nameField.text.isEmpty || passwordField.text.isEmpty ) {
            
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Sign in Failed!"
            alertView.message = "Please enter Username and Password"
            alertView.delegate = self
            alertView.addButtonWithTitle("OK")
            alertView.show()
        } else {
  
                   
        }
    }
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
    
       
        if (identifier == "login") {
            if(check == true) {
                return true
            } else {
                var alertView:UIAlertView = UIAlertView()
                alertView.title = "Sign in Failed!"
                alertView.message = "Wrong username or password!"
                alertView.delegate = self
                alertView.addButtonWithTitle("OK")
                alertView.show()
            }
        } else if(identifier == "register") {
            return true
        }
        
            return false
        
    }
    
    @IBAction func registerButtonTapped() {
    
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      
        if (segue.identifier == "login") {
        let membersVC = segue.destinationViewController as ViewController
        
   
            membersVC.acc.members = members
        } else {
        let test = segue.destinationViewController as registerViewController
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
