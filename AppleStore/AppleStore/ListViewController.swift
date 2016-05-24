//
//  ViewController.swift
//  Apple Store
//
//  Created by Ashish Tyagi on 24/05/16.
//  Copyright © 2016 Ashish Tyagi. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    let kProductCellIdentifier = "ProductCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: kProductCellIdentifier) as UITableViewCell
        cell.textLabel?.text = "Hello World"
        cell.detailTextLabel?.text
            = "Welcome To Apple Store"

        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
}

