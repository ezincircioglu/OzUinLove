//
//  infoViewController.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 11/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import UIKit

class infoViewController: UIViewController {
    
    var member: Member!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
 
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      nameLabel.text = member.name + " " + member.lastName
        ageLabel.text = member.age.description
        let url = member.photoURL
        if let nsurl = NSURL(string: url) {
            if let nsdata = NSData(contentsOfURL: nsurl) {
                imageView.image = UIImage(data: nsdata)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}