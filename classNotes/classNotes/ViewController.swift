//
//  ViewController.swift
//  classNotes
//
//  Created by WILLIAM COX on 10/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    //building a blankk student array and initializing it
    var students: [Student] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let s1 = Student(name: "seaver", age: 23, money: 0.01)
        let s2 = Student(name: "charles", age: 7, money: 4.55)
        
        students.append(s1)
        students.append(s2)
        students.append(Student(name: "carlos", age: 8, money: 6.72))
        
        
        print(students[1].name)
        students[1].name = "fred"
        print(students[1].name)
        print(students[1].money)
        students[1].depositMoney(moneyIn: 3.46)
        print(students[1].money)
        
        
        let struct1 = StudentStruct(name: "death", age: 6436, money: 0.0, rating: Rating.mid)
        print(struct1.name)
        
        switch struct1.rating {
        case .fire:
            print("you are fire")
        case .mid:
            print("you are mid")
        case .trash:
            print("you are trash")
        default:
            print("you are nothing")
        }
    }

    @IBAction func toNext(_ sender: Any) {
        performSegue(withIdentifier: "one", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerTwo
        
        nvc.stu = students[0]
        
    }
    
    
    
    enum Rating {
        case fire
        case mid
        case trash
    }
    
    public struct StudentStruct {
        
        var name : String
        var age : Int
        var money : Double
        
        var rating : Rating
        
        
    }
}

