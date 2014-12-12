//
//  TrainingSet.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 11/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import Foundation

class TrainingSet: Account {
    
    let acc = Account()
    
    override init() {
        super.init()
        self.populate()
    }
    
    
    // bu fonksiyon yakında gider.
    
    private func populate() {
        
        acc.addMember(Member(name: "Miranda", lastName: "Kerr", photoURL: "http://www.celebmarriages.com/wp-content/uploads/2014/10/Miranda-Kerr-CelebMarriages_com.jpg", age: 30))
        
        acc.addMember(Member(name: "Candice", lastName: "Swaneopel", photoURL: "http://cdn.internethaber.com/gallery/37591/4.jpg", age: 26))

    }
    
}