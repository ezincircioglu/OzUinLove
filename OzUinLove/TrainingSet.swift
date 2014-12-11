//
//  TrainingSet.swift
//  OzUinLove
//
//  Created by Emir Zincircioğlu on 11/12/14.
//  Copyright (c) 2014 Emir Zincircioğlu. All rights reserved.
//

import Foundation

class TrainingSet: Community {
    
    let dept = Community()
    
    override init() {
        super.init()
        self.populateCS()
    }
    
    private func populateCS() {
        

        dept.addMember(Member(name: "Reha", lastName: "Civanlar", userName:"rehac" , age: 50))
        dept.addMember(Member(name: "Tanju", lastName:"Erdem", userName:"tanjue", age: 50))
        dept.addMember(Member(name: "Ismail", lastName:"Ari", userName:"ismaila", age: 50))
        dept.addMember(Member(name: "Baris", lastName:"Aktemur", userName:"barisa", age: 50))
        dept.addMember(Member(name: "Hasan", lastName:"Sozer", userName:"hasans", age: 50))
        dept.addMember(Member(name: "Erhan", lastName:"Oztop", userName:"erhano", age: 50))
        dept.addMember(Member(name: "Murat", lastName:"Sensoy", userName:"muratsen", age: 50))
        
    }
    
}