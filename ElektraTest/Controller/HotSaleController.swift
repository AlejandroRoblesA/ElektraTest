//
//  HotSaleController.swift
//  ElektraTest
//
//  Created by Alejandro on 04/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

extension HotSaleViewController{
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.backgroundColor = elektraGray()

        setupNavigation()
        setupScroll()
        
        preferredCategoriesLabel.textColor = elektraBlue()
        participatingBrandsLabel.textColor = elektraBlue()
        collectionsLabel.textColor = elektraBlue()
        bestSellerLabel.textColor = elektraBlue()
        
        showProductsButton.addTarget(self, action: #selector(handleShowProducts), for: .touchUpInside)
        seeMoreButton.addTarget(self, action: #selector(handleShowProducts), for: .touchUpInside)
    }
    
    //MARK: - Handle's
    @objc func handleCreateUser(){
        let controller = SignUpViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func handleShowProducts(){
        let controller = ProductsViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
}

//MARK: - CollectionView
extension HotSaleViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if participatingBrandsCollectionView == collectionView{
            return participatingBrandsArray.count
        }
        else {
            return 2
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if participatingBrandsCollectionView == collectionView{
            let item = participatingBrandsCollectionView.dequeueReusableCell(withReuseIdentifier: itemParticipatingBrand, for: indexPath) as! ParticipatingBrandsCollectionViewCell
            item.participatingBrandImage.backgroundColor = .clear
            item.backgroundColor = .clear
            let image = participatingBrandsArray[indexPath.row]
            item.participatingBrandImage.image = UIImage(named: image)
            return item
        }
        else{
            let item = bestSellerCollectionView.dequeueReusableCell(withReuseIdentifier: itemBestSeller, for: indexPath) as! BestSellerCollectionViewCell
            item.backgroundColor = .clear
            item.phoneImage.image = UIImage(named: "phoneOne")
            if (indexPath.row == 1){
                item.previousPriceLabel.text = "$3,499.00"
                item.currentPriceLabel.text = "2,699.00"
                item.weekPriceLabel.text = "Desde $79.00 semanales"
                item.phoneImage.image = UIImage(named: "phoneTwo")
            }
            return item
        }
    }
}
