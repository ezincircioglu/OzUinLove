//
//  Member.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 11/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import Foundation


class Member {
    let userName: String
    let password: String
    let name: String
    let lastName: String
    let photoURL: String
    let age: Int

    
    init(userName: String, password: String, name: String, lastName: String, photoURL: String, age: Int) {
        self.userName = userName
        self.password = password
        self.name = name
        self.lastName = lastName
        self.photoURL = photoURL
        self.age = age
        
    }

}