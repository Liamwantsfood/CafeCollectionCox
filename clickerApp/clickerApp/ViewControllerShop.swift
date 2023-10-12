//
//  ViewControllerShop.swift
//  clickerApp
//
//  Created by WILLIAM COX on 10/4/23.
//

import UIKit

class ViewControllerShop: UIViewController {

    @IBOutlet weak var donutCount: UILabel!
    var delegate: ViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        donutCount.text = "\(delegate.donuts)"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func plusOne(_ sender: Any) {
        if delegate.donuts >= 30 {
            delegate.donuts -= 30
            delegate.perClick += 1
            donutCount.text = "\(delegate.donuts)"
            delegate.click.text = "\(delegate.perClick)"
        }
    }
    
    
    @IBAction func plusOneTimes(_ sender: Any) {
        if delegate.donuts >= 200 {
            delegate.donuts -= 200
            delegate.multiplier = delegate.multiplier + 1
            donutCount.text = "\(delegate.donuts)"
            delegate.multi.text = "\(delegate.multiplier)"
        }
        
    }

}
