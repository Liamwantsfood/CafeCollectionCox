//
//  ViewController.swift
//  ClassmateAppCox
//
//  Created by WILLIAM COX on 10/11/23.
//

import UIKit

class ViewController: UIViewController {

    
    var students : [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func toView(_ sender: Any) {
        performSegue(withIdentifier: "toView", sender: self)
    }
    
    @IBAction func toQuiz(_ sender: Any) {
        performSegue(withIdentifier: "toQuiz", sender: self)
    }
    
    
    
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let nvc1 = segue.destination as! ViewControllerView
//    }
}

//CLASS

public class Student {
    
    var name : String
    var age : Int
    var height : Double
    var rating : liamRating
    
    init(name: String, age: Int, height: Double, rating: liamRating) {
        self.name = name
        self.age = age
        self.height = height
        self.rating = rating
    }
    
}

enum liamRating {
    case good
    case bad
}
