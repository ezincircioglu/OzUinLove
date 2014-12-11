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
    let fullName: String
    let shortName: String
    
    init(fullName: String, shortName: String) {
        self.fullName = fullName
        self.shortName = shortName
    }
    
    func addMember(member: Member) {
        members.append(member)
    }
}