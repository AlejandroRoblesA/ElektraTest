//
//  ProductsController.swift
//  ElektraTest
//
//  Created by Alejandro on 04/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

extension ProductsViewController{
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Productos"
        setupTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        getProducts()
    }
    
    //MARK: - Functions
    func getProducts(){
        let request = Request()
        
        let url = "https://stage.ektdevelopers.com/_graphql?variables=%7B%0A%20%20%22skus%22%3A%20%5B%22321323142%22%2C%20%22321323076%22%2C%20%2245025344%22%2C%20%2245024957%22%2C%20%221003678%22%2C%20%22321321586%22%2C%20%2245025337%22%2C%20%22321323141%22%2C%20%2245035651%22%2C%20%2245048926%22%2C%20%221007046%22%2C%20%221006062%22%2C%20%221007073%22%2C%20%22321324716%22%2C%20%221006025%22%2C%20%221005116%22%2C%20%221006593%22%2C%20%221006581%22%2C%20%221006945%22%2C%20%22321321538%22%5D%0A%7D&query=query%20getProducts(%24skus%3A%20%5BString%5D)%20%7B%0A%20%20viewer%20%7B%0A%20%20%20%20products(skus%3A%20%24skus)%20%7B%0A%20%20%20%20%20%20id%0A%20%20%20%20%20%20name%0A%20%20%20%20%20%20image%0A%20%20%20%20%20%20price%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D"
        
        request.sendPostRequest(strUrl: url, dicParams: ["" : ""]) { (answer) -> Bool in
            
            let data = answer.object(forKey: "data") as! NSDictionary
            let viewer = data.object(forKey: "viewer") as! NSDictionary
            let products = viewer.object(forKey: "products") as! NSArray
            
            for product in products{
                
                let dictionaryProducts = product as! NSDictionary
                let productName = dictionaryProducts.object(forKey: "name") as! String
                self.productsNameArray.append(productName)
                let productImage = dictionaryProducts.object(forKey: "image") as! String
                self.productsImagesArray.append(productImage)
                let productPrice = dictionaryProducts.object(forKey: "price") as! Int
                self.productsPriceArray.append(productPrice)

            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
            return true
        }
    }
    
}

//MARK: - TableView
extension ProductsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (isSearching){
            return filteredArray.count
        }
        else{
            return productsNameArray.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var device: String?
        device = isSearching ? filteredArray[indexPath.row] : productsNameArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ProductTableViewCell
        cell.nameLabel.text = device
        cell.productImage.loadImageUsingCacheWithUrlString(urlString: productsImagesArray[indexPath.row])
        cell.priceLabel.text = "$" + String(productsPriceArray[indexPath.row]) + ".00"
        return cell
    }
}

//MARK: - Search bar
extension ProductsViewController: UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == nil || searchBar.text == ""{
            isSearching = false
            view.endEditing(true)
            tableView.reloadData()
        }
        else{
            isSearching = true
            filteredArray = productsNameArray.filter({$0.range(of: searchBar.text!, options: .caseInsensitive) != nil})
            tableView.reloadData()
        }
    }
}
