//
//  ViewController.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 10/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!


    
    var train = TrainingSet()
    var index: Int = 0
    
    @IBAction func Like() {
        memberArrayIndex(train.acc.members)
        refreshUI()
        
    }

    @IBAction func Nope() {
        memberArrayIndex(train.acc.members)
        refreshUI()
    }
    
    
    func memberArrayIndex(members: [Member]) -> Int {
       
        index++
        
        if(index > members.count-1) {
            index = 0
        }
        
        return index
    }
    
    
    func refreshUI() {
        viewDidLoad()
    }
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        let url = train.acc.members[index].photoURL
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let member = train.acc.members[index]
        let memberVC = segue.destinationViewController as infoViewController
        memberVC.member = member
    
    }
}

