import UIKit

class ProductRepo: NSObject {
    
    class func getProducts () -> [Product]{
        let jsonData = NSData(contentsOfFile: NSBundle.mainBundle().pathForResource("apple-products", ofType: "json")!)
        
        let productsDict = (try! NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions())) as! Dictionary<String, AnyObject>
        
        let productsArray = productsDict["products"] as! Array<Dictionary<String, String>>
        
        return productsArray.map {aProductDict in
            Product(name: aProductDict["title"]!,
            price: aProductDict["price"]!,
            detailText: aProductDict["detail"]!,
            thumbnailImageName: aProductDict["thumbnailImage"]!,
            fullImageName: aProductDict["fullImage"]!)
        }
    }
   
}
