//
//  ViewController.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 10/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    var train = TrainingSet()
    var index: Int = 0
    
    @IBAction func Like() {
        index++
        refreshUI()
    }
    
    @IBAction func Nope() {
        index++
        refreshUI()
    }
    
    func refreshUI() {
        viewDidLoad()
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let url = "http://annualreport.ozyegin.edu.tr/images/profile/" + train.dept.members[index].userName + ".jpg"
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

        let member = train.dept.members[index]
        let memberVC = segue.destinationViewController as infoViewController
        memberVC.member = member
    }



}

