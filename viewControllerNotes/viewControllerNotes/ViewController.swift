//
//  ViewController.swift
//  viewControllerNotes
//
//  Created by WILLIAM COX on 9/28/23.
//

// add functions you want to send back
protocol ViewControllerDel {
    // protocols are like interfaces
    // protocols have blank functions, when adopted you must write the functions code
    func changeName(_ s1 : String)
}



import UIKit
//add comma (,) to add protocol
class ViewController: UIViewController, ViewControllerDel {

    

    @IBOutlet weak var textOutlet: UITextField!
    var pony = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
    //    view.backgroundColor = UIColor.systemPink
    }

//select firwt view controller
    //click yellow dot
    //press edit
    // press embed in
//you have to add code after new view controler
    
    //file -> new -> file
    //connect class to view controller
    //yellow dot
    //go to identity pane thingy
    //type name of class
    
    //product -> clean
    @IBAction func manuel(_ sender: Any) {
        view.backgroundColor = UIColor.brown
        pony = String(textOutlet.text!)
        performSegue(withIdentifier: "toRed", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //nvc = next view controller. Give access to next view controller
        let nvc = segue.destination as! ViewControllerStacks
            
        nvc.name = pony
    }
    
    //change name called from other view controller
    func changeName(_ s1 : String) {
        pony = s1
    }
}

