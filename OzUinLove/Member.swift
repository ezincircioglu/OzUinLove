//
//  Member.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 11/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import Foundation


class Member {
    let name: String
    let lastName: String
    let photoURL: String
    let age: Int
    
    init(name: String, lastName: String, photoURL: String, age: Int) {
        self.name = name
        self.lastName = lastName
        self.photoURL = photoURL
        self.age = age
        
    }

}