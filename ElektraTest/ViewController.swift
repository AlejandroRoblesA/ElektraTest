//
//  ViewController.swift
//  ElektraTest
//
//  Created by Alejandro on 01/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

let scrollView: UIScrollView = {
    let scroll = UIScrollView()
    scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 1500)
    scroll.translatesAutoresizingMaskIntoConstraints = false
    return scroll
}()

let contentView: UIView = {
    let view = UIView()
    view.backgroundColor = .white
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()

let labelOne: UILabel = {
    let label = UILabel()
    label.text = "First Text"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

let labelTwo: UILabel = {
    let label = UILabel()
    label.text = "Second Text"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
     setupScroll()
        
    }
    
    func setupScroll(){
        
        view.addSubview(scrollView)
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        scrollView.addSubview(contentView)
        contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        contentView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        contentView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        contentView.addSubview(labelOne)
        labelOne.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10).isActive = true
        labelOne.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        labelOne.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 1000).isActive = true
        labelOne.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        contentView.addSubview(labelTwo)
        labelTwo.topAnchor.constraint(equalTo: labelOne.bottomAnchor, constant: 900).isActive = true
        labelTwo.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        labelTwo.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 1000).isActive = true
        labelTwo.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}

