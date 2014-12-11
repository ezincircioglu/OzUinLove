//
//  Community.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 11/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import Foundation

class Community {
    
    var members = [Member]()
//    let fullName: String
//
//    
//    init(fullName: String) {
//        self.fullName = fullName
//        
//    }
    
    func addMember(member: Member) {
        members.append(member)
    }
}