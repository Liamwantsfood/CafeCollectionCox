//
//  ViewController.swift
//  TableViewNotes
//
//  Created by WILLIAM COX on 10/18/23.
//



struct Book {
    var author: String
    var title: String
    var pages: Int
    var chapters: Int
}

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    var numbers = [1,2,3,4,5,6]
    var books = [Book]()
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        books.append(Book(author: "Seaver", title: "Figure It Out", pages: 12, chapters: 2))
        books.append(Book(author: "George Orwell", title: "1984", pages: 200, chapters: 15))
        // Do any additional setup after loading the view.
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    //this populates each cell, gets called for us by the delegate.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
//        cell.textLabel?.text = "\(numbers[indexPath.row])"
//        cell.detailTextLabel?.text = "Hello"
        cell.authorOutlet.text = books[indexPath.row].author
        cell.titleOutlet.text = books[indexPath.row].title
        cell.pagesoutlet.text = "\(books[indexPath.row].pages)"
        cell.chaptersOutlet.text = "\(books[indexPath.row].chapters)"
   //     cell.imageViewOutlet.image = 
        return cell
    }

    @IBAction func addAction(_ sender: Any) {
        var blah = textFieldOutlet.text!
        var num = Int(blah)
        if let n = num {
            numbers.append(n)
            tableViewOutlet.reloadData()

        }
    }
}

