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
        let cell = tableView.dequeueReusableCellWithIdentifier(kProductCellIdentifier) as! ProductCell
        
        let product = ProductRepo.getProducts()[indexPath.row]
        
        cell.title.text = product.name
        cell.price.text = product.price
        cell.metaInfo.text = product.meta
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ProductRepo.getProducts().count
    }
}

