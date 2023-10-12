//
//  ViewControllerStacks.swift
//  viewControllerNotes
//
//  Created by WILLIAM COX on 9/28/23.
//





import UIKit
// add a comma (,) to add protocols
class ViewControllerStacks: UIViewController {

    

    var name : String!
    
    
    //create a var that allows you to have acces to the first view controller
    var delegate: ViewController!
    
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.yellow
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondButton(_ sender: Any) {
        performSegue(withIdentifier: "happy", sender: self)
    }
    
    @IBAction func backtoFirst(_ sender: Any) {
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //nvc = next view controller. Give access to next view controller
        let nvc = segue.destination as! ViewControllerNEW
            
        nvc.delegate = self
        //using protocol to change name
        delegate.changeName(name)
    }
    

}
