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

    @IBOutlet weak var usernameLabel: UILabel!

    @IBAction func logoutTapped(sender: UIButton) {
        
        
        
    }
    
    var acc = Account()
    var index: Int = 1
    var loginIndex: Int!
    var likeArray = [Int]()
    var likeDict = [String:[Int]]()

    @IBAction func Like() {
        memberArrayIndex(acc.members)
        refreshUI()
        likeArray.append(index)
        likeDict[acc.members[loginIndex].userName] = likeArray
    }

    @IBAction func Nope() {
        memberArrayIndex(acc.members)
        refreshUI()
    }
    
    
    func memberArrayIndex(members: [Member]) -> Int {
       
        index++
        
        if(index > members.count-1) {
            index = 1
        }
        
        return index
    }
    
    
    func refreshUI() {
        viewDidLoad()
    }
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            if(!acc.members.isEmpty) {
                NSLog("index %d",loginIndex)
                if((loginIndex + 1) < acc.members.count) {
                    let url = acc.members[loginIndex + 1].photoURL
                    if let nsurl = NSURL(string: url) {
                        if let nsdata = NSData(contentsOfURL: nsurl) {
                            imageView.image = UIImage(data: nsdata)
                
                        }
                    }
                }
            }
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let member = acc.members[index]
        let memberVC = segue.destinationViewController as infoViewController
        memberVC.member = member
    
    }
}

