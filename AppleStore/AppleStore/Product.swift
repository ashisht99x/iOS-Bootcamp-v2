import UIKit

class Product {
    
    private let thumbnailImageName : String
    
    let name : String
    let price : String
    let detailText : String
    let fullImageURL : String
    let meta : String
    var isFavourite : Bool
    
    var thumbnailImage : UIImage? {
        get {
            return UIImage(named: thumbnailImageName)
        }
    }
    
    init(name: String, price: String, detailText: String,thumbnailImageName tName: String, fullImageName fName: String, meta: String){
        self.name = name
        self.price = price
        self.detailText = detailText
        self.meta = meta
        self.thumbnailImageName = tName
        self.fullImageURL = fName
        self.isFavourite = false
    }
}
