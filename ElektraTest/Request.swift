//
//  Request.swift
//  ElektraTest
//
//  Created by Alejandro on 03/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import Foundation

import Foundation

class Request: NSObject{
    
    func sendPostRequest(strUrl: String, dicParams: [String : String], completion: @escaping (NSDictionary) -> Bool) -> Void{
        let url = URL(string: strUrl)!
        let session = URLSession.shared
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: dicParams, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
        }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            
            guard error == nil else
            {
                return
            }
            
            guard let data = data else
            {
                return
            }
            
            do
            {
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? NSDictionary
                {
                    print(json)
                    completion(json)
                }
            }
            catch let error
            {
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
}
