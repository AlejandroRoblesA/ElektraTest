//
//  BestSellerCollectionViewCell.swift
//  ElektraTest
//
//  Created by Alejandro on 02/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

class BestSellerCollectionViewCell: UICollectionViewCell {
    
    let whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let phoneImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .clear
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let previousPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "$8,999.00"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let currentPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "$4,899.00"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let elektaLabel: UILabel = {
        let label = UILabel()
        label.text = "CRÉDITO *elektra"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let weekPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "Desde $132.00 semanales"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addSubview(whiteView)
        whiteView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        whiteView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        whiteView.widthAnchor.constraint(equalToConstant: 180).isActive = true
        whiteView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
        addSubview(phoneImage)
        phoneImage.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        phoneImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        phoneImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        phoneImage.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        addSubview(previousPriceLabel)
        previousPriceLabel.topAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: 0).isActive = true
        previousPriceLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        previousPriceLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        previousPriceLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        addSubview(currentPriceLabel)
        currentPriceLabel.topAnchor.constraint(equalTo: previousPriceLabel.bottomAnchor, constant: 0).isActive = true
        currentPriceLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        currentPriceLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        currentPriceLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        addSubview(elektaLabel)
        elektaLabel.topAnchor.constraint(equalTo: currentPriceLabel.bottomAnchor, constant: 0).isActive = true
        elektaLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        elektaLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        elektaLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        addSubview(weekPriceLabel)
        weekPriceLabel.topAnchor.constraint(equalTo: elektaLabel.bottomAnchor, constant: 0).isActive = true
        weekPriceLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        weekPriceLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        weekPriceLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        bottomAnchor.constraint(equalTo: weekPriceLabel.bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
