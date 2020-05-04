//
//  Images.swift
//  ElektraTest
//
//  Created by Alejandro on 03/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import Foundation

import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView{
    
    func loadImageUsingCacheWithUrlString(urlString: String){
        
        self.image = nil
        
        if let cachedImage = imageCache.object(forKey: urlString as AnyObject) as? UIImage{
            self.image = cachedImage
            return
        }
        
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
            if error != nil{
                print (error!)
                return
            }
            DispatchQueue.main.async {
                
                if let downloadedImage = UIImage(data: data!){
                    imageCache.setObject(downloadedImage, forKey: urlString as AnyObject)
                    
                    self.image =  downloadedImage
                }
                self.image = UIImage(data: data!)
                
            }
        }).resume()
    }
}
