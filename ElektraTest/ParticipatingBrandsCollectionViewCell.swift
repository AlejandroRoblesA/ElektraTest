//
//  ParticipatingBrandsCollectionViewCell.swift
//  ElektraTest
//
//  Created by Alejandro on 02/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

class ParticipatingBrandsCollectionViewCell: UICollectionViewCell {
    
    let participatingBrandImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addSubview(participatingBrandImage)
        participatingBrandImage.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        participatingBrandImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        participatingBrandImage.widthAnchor.constraint(equalToConstant: 80).isActive = true
        participatingBrandImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        bottomAnchor.constraint(equalTo: participatingBrandImage.bottomAnchor, constant: 10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
