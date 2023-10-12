//
//  Student.swift
//  classNotes
//
//  Created by WILLIAM COX on 10/6/23.
//

import Foundation

public class Student {
    
    var name: String
    var age: Int
    var money: Double
    
    //making the initializer
    
    init(name: String, age: Int, money: Double) {
        self.name = name
        self.age = age
        self.money = money
    }
    
    func depositMoney(moneyIn: Double) {
        money = money + moneyIn
    }
    
}

public struct StudentStruct {
    
    var name : String
    var age : Int
    var money : Double
    
    
    
}
