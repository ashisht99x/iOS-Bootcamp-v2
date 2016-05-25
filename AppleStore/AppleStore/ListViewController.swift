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
    let kShowDetailsSegue = "ShowDetails"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 60
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(kProductCellIdentifier) as! ProductCell
        
        let product = ProductRepo.getProducts()[indexPath.row]
        cell.setProduct(product)
         return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ProductRepo.getProducts().count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == kShowDetailsSegue {
            let destination = segue.destinationViewController as! DetailViewController
            destination.selectedProduct = ProductRepo.getProducts()[self.tableView.indexPathForSelectedRow!.row]

        }
    }
}

