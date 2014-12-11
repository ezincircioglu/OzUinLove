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

    var lastRotation = CGFloat()
    let panRec = UIPanGestureRecognizer()
  
    
    
    var train = TrainingSet()
    var index: Int = 0
    
    @IBAction func Like() {
        memberArrayIndex(train.dept.members)
        refreshUI()
        
    }

    @IBAction func Nope() {
        memberArrayIndex(train.dept.members)
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
    
    func draggedView(sender:UIPanGestureRecognizer){
        self.view.bringSubviewToFront(sender.view!)
        var translation = sender.translationInView(self.view)
        //sender.view.center? = CGPointMake(sender.view.center.x? + translation.x, sender.view.center.y? + translation.y)
        sender.setTranslation(CGPointZero, inView: self.view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        panRec.addTarget(self, action: "draggedView:")
        imageView.addGestureRecognizer(panRec)
        imageView.userInteractionEnabled = true
        
        
        
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

