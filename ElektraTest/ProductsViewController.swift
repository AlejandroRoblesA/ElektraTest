//
//  ProductsViewController.swift
//  ElektraTest
//
//  Created by Alejandro on 02/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    let cellIdentifier = "cellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let request = Request()
        
        let url = "https://stage.ektdevelopers.com/_graphql?variables=%7B%0A%20%20%22skus%22%3A%20%5B%22321323142%22%2C%20%22321323076%22%2C%20%2245025344%22%2C%20%2245024957%22%2C%20%221003678%22%2C%20%22321321586%22%2C%20%2245025337%22%2C%20%22321323141%22%2C%20%2245035651%22%2C%20%2245048926%22%2C%20%221007046%22%2C%20%221006062%22%2C%20%221007073%22%2C%20%22321324716%22%2C%20%221006025%22%2C%20%221005116%22%2C%20%221006593%22%2C%20%221006581%22%2C%20%221006945%22%2C%20%22321321538%22%5D%0A%7D&query=query%20getProducts(%24skus%3A%20%5BString%5D)%20%7B%0A%20%20viewer%20%7B%0A%20%20%20%20products(skus%3A%20%24skus)%20%7B%0A%20%20%20%20%20%20id%0A%20%20%20%20%20%20name%0A%20%20%20%20%20%20image%0A%20%20%20%20%20%20price%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D"
        
        request.sendPostRequest(strUrl: url, dicParams: ["" : ""]) { (answer) -> Bool in
            
            let data = answer.object(forKey: "data") as! NSDictionary
            let viewer = data.object(forKey: "viewer") as! NSDictionary
            let products = viewer.object(forKey: "products") as! NSArray
            print("❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌❌")
            for product in products{
                
                let dictionaryProducts = product as! NSDictionary
                let productName = dictionaryProducts.object(forKey: "name") as! String
                print(productName)
            }
            
            
            return true
        }
        
    }
    
    func setupTableView(){
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(ProductTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        
    }
    
}

extension ProductsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ProductTableViewCell
        
        return cell
    }
    
    
}
