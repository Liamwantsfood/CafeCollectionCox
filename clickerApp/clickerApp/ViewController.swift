//
//  ViewController.swift
//  clickerApp
//
//  Created by WILLIAM COX on 10/2/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var donutAmountDisplay: UILabel!
    var donuts = 0
    var multiplier = 1
    @IBOutlet weak var multi: UILabel!
    @IBOutlet weak var click: UILabel!
    var perClick = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        donuts = donuts + multiplier*perClick
        donutAmountDisplay.text = "\(donuts)"
    }
    
    @IBAction func toShop(_ sender: Any) {
        performSegue(withIdentifier: "toShop", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerShop
        nvc.delegate = self
    }
    
}

