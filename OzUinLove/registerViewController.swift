//
//  registerViewController.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 12/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import UIKit

class registerViewController: UIViewController {
    
    
    var acc = Account()
    
    //var members: [Member] = []
    @IBOutlet weak var firstNameField: UITextField!
    
    @IBOutlet weak var lastNameField: UITextField!
  
    @IBOutlet weak var userNameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var urlField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
    
    
    @IBAction func deneme() {
    
        NSLog(acc.members[0].name)
        NSLog(acc.members[0].lastName)
        
    }
    
    
    @IBAction func signUpTapped(sender: UIButton) {
        
//        var username:NSString = userNameField.text as NSString
//        var password:NSString = passwordField.text as NSString
//        var photoURL:NSString = urlField.text as NSString
//        var firstname:NSString = firstNameField.text as NSString
//        var lastname:NSString = lastNameField.text as NSString
//        var age.description:NSString = ageField.text as NSString
     
       // if ( username.isEqualToString("") || password.isEqualToString("") ) {
        if(userNameField.text.isEmpty || passwordField.text.isEmpty || urlField.text.isEmpty || firstNameField.text.isEmpty
            || lastNameField.text.isEmpty || ageField.text.isEmpty) {
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Sign Up Failed!"
            alertView.message = "Please enter Username,Password,First Name,Last Name, photoURL and Age"
            alertView.delegate = self
            alertView.addButtonWithTitle("OK")
            alertView.show()
            }  else {
            
            acc.addMember(Member(userName: userNameField.text, password: passwordField.text, name: firstNameField.text, lastName: lastNameField.text, photoURL: urlField.text, age: ageField.text.toInt()!))
            
           // members.append(Member(userName: userNameField.text, password: passwordField.text, name: firstNameField.text, lastName: lastNameField.text, photoURL: urlField.text, age: ageField.text.toInt()!))
            
              //  items.append(textField.text)
                //let userDefaults = NSUserDefaults.standardUserDefaults()
                //userDefaults.setObject(members, forKey: "accounts")
 
            
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Done"
            alertView.message = "Registration Successful!"
            alertView.delegate = self
            alertView.addButtonWithTitle("OK")
            alertView.show()
            
            userNameField.clearsOnBeginEditing = true
            passwordField.clearsOnBeginEditing = true
            lastNameField.clearsOnBeginEditing = true
            urlField.clearsOnBeginEditing = true
            firstNameField.clearsOnBeginEditing = true
            ageField.clearsOnBeginEditing = true
            
            //self.performSegueWithIdentifier("login", sender: self)
            //self.dismissViewControllerAnimated(true, completion: nil)
            //var post:NSString = "username=\(username)&password=\(password)&photoURL=\(photoURL)"
 
            //NSLog("PostData: %@",post);
            
            /*
            
            var prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
            prefs.setObject(username, forKey: "USERNAME")
            prefs.setInteger(1, forKey: "ISLOGGEDIN")
            prefs.synchronize()
            
            */
                }

        
    }
    
    @IBAction func cancelTapped(sender: UIButton) {
        navigationController?.popViewControllerAnimated(true)
        
    }
    
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            let members = acc.members
            let member = acc.members[0]
            let membersVC = segue.destinationViewController as loginViewController
            let memberVC = segue.destinationViewController as loginViewController
            memberVC.member = member
            membersVC.members = members
        
        }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
