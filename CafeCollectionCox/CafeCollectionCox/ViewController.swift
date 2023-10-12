//
//  ViewController.swift
//  CafeCollectionCox
//
//  Created by WILLIAM COX on 9/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var foodItemOutlet: UILabel!
    @IBOutlet weak var foodPriceOutlet: UILabel!
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var itemField: UITextField!
    @IBOutlet weak var cartDisplay: UILabel!
    @IBOutlet weak var cartOutlet: UITextView!
    @IBOutlet weak var priceDisplay: UILabel!
    @IBOutlet weak var error: UILabel!
    @IBOutlet weak var sortedMenu: UITextView!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var newItemInput: UITextField!
    @IBOutlet weak var newItemPrice: UITextField!
    var spot = 0
    var price = 0.0
    
    var cart = [String: Double]()
    var stringList = ""
    var found = true
    var itemsInList: [String] = []
    var stringer = ""
    
    var cartList: [String] = []
    var food: [String] = ["pasta","burger","toast","beans","omlete"]
    var foodPrice: [Double] = [10.25,20.00,2.99,0.10,499.99]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        foodItemOutlet.text = food[spot]
        foodPriceOutlet.text = "\(foodPrice[spot])"
    }

    @IBAction func leftButton(_ sender: Any) {
        if spot > 0 {
            spot = spot - 1
            foodItemOutlet.text = food[spot]
            foodPriceOutlet.text = "\(foodPrice[spot])"
        } else {
            foodItemOutlet.text = food[food.count-1]
            foodPriceOutlet.text = "\(foodPrice[foodPrice.count-1])"
            spot = food.count-1
        }
    }
    @IBAction func rightButton(_ sender: Any) {
        if spot < food.count-1 {
            spot = spot + 1
            foodItemOutlet.text = food[spot]
            foodPriceOutlet.text = "\(foodPrice[spot])"
        } else {
            foodItemOutlet.text = food[0]
            foodPriceOutlet.text = "\(foodPrice[0])"
            spot = 0
        }
    }
    @IBAction func addToCartButton(_ sender: Any) {
        let item = String(itemField.text!)
        let amt = Double(amountField.text!)
        
        if isInDict(item: item) {
            if let n = amt {
                cart[item] = n
                itemsInList.append(item)
                if checkMenuItem(test: item) {
                    stringList += "\n\(item)"
                    cartOutlet.text = stringList
                    price = 0
                    for (key,value) in cart {
                        price = price + (findPrice(item: key)*value)
                    }
                    priceDisplay.text = "$\(price)"
                } else {
                    error.text = "enter valid input"
                }
            } else {
                error.text = "enter valid number"
            }
        }
    }
        
    
    func checkMenuItem(test : String) -> Bool {
        _ = true
        for menuItem in food {
            if test == menuItem {
                return true
            }
        }
        return false
    }
    
    func findPrice(item : String) -> Double {
        let num = 0
        var found = 0
        for i in  0..<food.count {
            if item == food[i] {
                found = i
                return foodPrice[i]
            }
        }
        return foodPrice[num]
    }
    
    func isInDict(item : String) -> Bool {
        var current = true
        for ordered in itemsInList {
            if (item == ordered) {
                current = false
            }
        }
        return current
    }

    

    @IBAction func addItem(_ sender: Any) {
        let newItem = String(newItemInput.text!)
        let passwordCheck = String(passwordInput.text!)
        let newPrice = Double(newItemPrice.text!)
        
        if let n = newPrice {
            if (passwordCheck == "incorrect") {
                food.append(newItem)
                foodPrice.append(n)
            }
        }
    }
}

