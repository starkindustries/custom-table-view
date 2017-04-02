//
//  MyTableViewController.swift
//  CustomTableView
//
//  Created by Zion Perez on 4/1/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController, CustomCellDelegate {
    
    var myTexts: [String?]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTexts = Array(repeating: nil, count: 20)
        
        let nib = UINib(nibName: "MyTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "MyTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("CellForRowAt: " + indexPath.row.description)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        cell.delegate = self
        cell.textField.text = myTexts[indexPath.row]
        return cell
    }
    
    // MARK: - CustomCellDelegate
    func cell(cell: UITableViewCell, updatedCustomTextField textField: UITextField) {
        // when the cell tells us that its text field's value changed, update our own model
        if let indexPath = tableView.indexPath(for: cell), let string = textField.text {
            print("delegate method cell updatedCustomTextField")
            myTexts[indexPath.row] = string
        }
    }
}
