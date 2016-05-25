//
//  ProductCell.swift
//  AppleStore
//
//  Created by Ashish Tyagi on 25/05/16.
//  Copyright © 2016 Ashish Tyagi. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var metaInfo: UILabel!
    
    func setProduct(product: Product) {
        self.title.text = product.name
        self.price.text = product.price
        self.metaInfo.text = product.meta
    }
}
