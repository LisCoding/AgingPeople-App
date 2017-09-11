//
//  ViewController.swift
//  AgingPeople
//
//  Created by Liseth Cardozo Sejas on 9/10/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var names = ["Liseth", "Alex", "Ali", "Maria", "Maicol", "Alexsa", "Daniel", "Vinney", "Loren", "Manny", "Carlos", "Poki"]
    var ages = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
//        for _ in  1...12 {
//            ages.append(Int(arc4random_uniform(95) + 5))
//        }
 
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController: UITableViewDataSource {
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
        // return an integer that indicates how many rows (cells) to draw
    }
    
    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = String(Int(arc4random_uniform(95) + 5))
        
        return cell
    }
    
    
}
