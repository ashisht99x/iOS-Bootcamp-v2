//
//  DetailViewController.swift
//  AppleStore
//
//  Created by Tapan Thaker on 27/05/15.
//  Copyright (c) 2015 Tapan Thaker. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var fullImageView: UIImageView!
    @IBOutlet weak var detailTextView: UITextView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var selectedProduct : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedProduct?.name
        detailTextView.text = selectedProduct?.detailText
    }
}

