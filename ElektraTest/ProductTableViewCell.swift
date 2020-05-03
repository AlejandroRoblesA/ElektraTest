//
//  ProductTableViewCell.swift
//  ElektraTest
//
//  Created by Alejandro on 02/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    let productImage: UIImageView = {
        let image = UIImageView()
//        image.backgroundColor = .blue
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Product name"
//        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "Price Product"
//        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(productImage)
        productImage.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        productImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        productImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        productImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: 10).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        addSubview(priceLabel)
        priceLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        priceLabel.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: 10).isActive = true
        priceLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -10).isActive = true
        priceLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        bottomAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
