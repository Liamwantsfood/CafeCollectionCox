//
//  ViewController.swift
//  newCreativeApp
//
//  Created by WILLIAM COX on 9/7/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var numberOutlet: UILabel!
    
    @IBOutlet weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        num1.delegate = self
        num2.delegate = self
    }

    @IBAction func divide(_ sender: Any) {
        let n1 = Double(num1.text!)
        let n2 = Double(num2.text!)
        if let n = n1 {
            if let u = n2 {
                let n = n1!/n2!
                numberOutlet.text = "\(n)"
            } else {
                
            }
        } else {
            numberOutlet.text = "you are a failure"
        }
    }
    
    @IBAction func multiply(_ sender: Any) {
        let n1 = Double(num1.text!)
        let n2 = Double(num2.text!)
        if let n = n1 {
            if let u = n2 {
                let n = n1!*n2!
                numberOutlet.text = "\(n)"
            } else {
                numberOutlet.text = "you are a failure"
            }
        } else {
            numberOutlet.text = "you are a failure"
        }
    }
    
    @IBAction func subtract(_ seder: Any) {
        let n1 = Double(num1.text!)
        let n2 = Double(num2.text!)
        if let n = n1 {
            if let u = n2 {
                let n = n1!-n2!
                numberOutlet.text = "\(n)"
            } else {
                numberOutlet.text = "you are a failure"
            }
        } else {
            numberOutlet.text = "you are a failure"
        }
    }
    
    @IBAction func add(_ sender: Any) {
        let n1 = Double(num1.text!)
        let n2 = Double(num2.text!)
        if let n = n1 {
            if let u = n2 {
                let n = n1!+n2!
                numberOutlet.text = "\(n)"
            } else {
                numberOutlet.text = "you are a failure"
            }
        } else {
            numberOutlet.text = "you are a failure"
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

