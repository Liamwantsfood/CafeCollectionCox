//
//  ViewControllerNEW.swift
//  viewControllerNotes
//
//  Created by WILLIAM COX on 9/29/23.
//

import UIKit

class ViewControllerNEW: UIViewController {

    var yes = ""
    @IBOutlet weak var name: UITextField!
    
    weak var delegate: ViewControllerStacks!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //using the delegate, you can reference variables from that 

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backwards(_ sender: Any) {
      yes = String(name.text!)
    }
    
 

}
