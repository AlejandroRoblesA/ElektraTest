//
//  ProductsViewController.swift
//  ElektraTest
//
//  Created by Alejandro on 02/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {
    
    //MARK: - Search bar
    let searchBar: UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        return search
    }()
    
    //MARK: - TableView
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    //MARK: - String
    let cellIdentifier = "cellIdentifier"
    
    //MARK: - Array's
    var productsNameArray = [String]()
    var productsImagesArray = [String]()
    var productsPriceArray = [Int]()
    var filteredArray = [String]()
    
    //MARK: - Bool
    var isSearching = false
    
    //MARK: - Constraints
    func setupTableView(){
        
        view.backgroundColor = .white
        
        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
        
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).defaultTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        
        view.addSubview(searchBar)
        searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        searchBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        searchBar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(ProductTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        
    }
}


