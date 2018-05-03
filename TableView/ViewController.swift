//
//  ViewController.swift
//  TableView
//
//  Created by D7703_03 on 2018. 5. 3..
//  Copyright © 2018년 D7703_03. All rights reserved.
//  ? 진봉...?

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var animals = ["Cat", "Tiger", "lion", "Monkey", "Cow"]
    var country = ["Korea", "China", "Africa", "Japan", "Aus"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = animals[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        
        //let myImage = UIImage(named: "2.png")
        //cell.imageView?.image = myImage
        
        cell.detailTextLabel?.text = "section= \(indexPath.section) row=\(indexPath.row)"
        
        let myImg = UIImage(named:"\(indexPath.row+1).png")
        
        cell.imageView?.image = myImg
  
        return cell
    }
}


