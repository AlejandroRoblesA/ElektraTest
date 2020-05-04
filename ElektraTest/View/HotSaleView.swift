//
//  ViewController.swift
//  ElektraTest
//
//  Created by Alejandro on 01/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

class HotSaleViewController: UIViewController {

    //MARK: - Scroll
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.contentSize = CGSize(width: UIScreen.main.bounds.width, height: 2200)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()

    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: - Images
    let topHotSaleImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "hotSaleTop")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let hotSaleYellowImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let preferredCategoriesImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .clear
        image.image = UIImage(named: "preferredCategories")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let creditoImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let bikerImage: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let shoesImage: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    let sportsImage: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    //MARK: - Label's
    let preferredCategoriesLabel: UILabel = {
        let label = UILabel()
        label.text = "Categorias preferidas"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let participatingBrandsLabel: UILabel = {
        let label = UILabel()
        label.text = "Marcas Participantes"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let collectionsLabel: UILabel = {
        let label = UILabel()
        label.text = "Colecciones"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let bestSellerLabel: UILabel = {
        let label = UILabel()
        label.text = "Los más Vendidos"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - CollectionView
    let participatingBrandsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 20, left: 40, bottom: 20, right: 40)
        layout.itemSize = CGSize(width: 200, height: 60)
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .clear
        collection.showsHorizontalScrollIndicator = false
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()

    let bestSellerCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: -100, left: 40, bottom: 0, right: 40)
        layout.itemSize = CGSize(width: 300, height: 400)
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .clear
        collection.showsHorizontalScrollIndicator = false
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()

    //MARK: -Array's
    let participatingBrandsArray = ["samsung", "italika", "apple", "lg"]
    let itemParticipatingBrand = "itemParticipatingBrand"
    let itemBestSeller = "itemBestSeller"
    
    //MARK: - Button
    let showProductsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let seeMoreButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("Ver más", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Constrains
    func setupNavigation(){
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.tintColor = elektraBlue()
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Hot Sale"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "user"), style: .plain, target: self, action: #selector(handleCreateUser))
    }
    
    func setupScroll(){
        
        view.addSubview(scrollView)
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 1).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -1).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        scrollView.addSubview(contentView)
        contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        contentView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        contentView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    
        setupImages()
        
    }
    
    func setupImages(){
        
        //HotSale Gray
        contentView.addSubview(topHotSaleImage)
        topHotSaleImage.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        topHotSaleImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        topHotSaleImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        topHotSaleImage.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        //HotSale Yellow
        contentView.addSubview(hotSaleYellowImage)
        hotSaleYellowImage.topAnchor.constraint(equalTo: topHotSaleImage.bottomAnchor, constant: 30).isActive = true
        hotSaleYellowImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        hotSaleYellowImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        hotSaleYellowImage.heightAnchor.constraint(equalToConstant: 260).isActive = true
        
        //Credit card
        contentView.addSubview(creditoImage)
        creditoImage.topAnchor.constraint(equalTo: hotSaleYellowImage.bottomAnchor, constant: 20).isActive = true
        creditoImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        creditoImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        creditoImage.heightAnchor.constraint(equalToConstant: 175).isActive = true
        
        //Preferred categories
        preferredCategories()
        
        //Participating Brands
        participatingBrands()
        
        //Collections
        collections()
        
        //Best Seller
        bestSeller()
    }
    
    
    func preferredCategories(){
        
        contentView.addSubview(preferredCategoriesLabel)
        preferredCategoriesLabel.topAnchor.constraint(equalTo: creditoImage.bottomAnchor, constant: 20).isActive = true
        preferredCategoriesLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        preferredCategoriesLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        preferredCategoriesLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        contentView.addSubview(preferredCategoriesImage)
        preferredCategoriesImage.topAnchor.constraint(equalTo: preferredCategoriesLabel.bottomAnchor, constant: 30).isActive = true
        preferredCategoriesImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        preferredCategoriesImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        preferredCategoriesImage.heightAnchor.constraint(equalToConstant: 420).isActive = true
        
        contentView.addSubview(showProductsButton)
        showProductsButton.bottomAnchor.constraint(equalTo: preferredCategoriesImage.bottomAnchor, constant: 0).isActive = true
        showProductsButton.rightAnchor.constraint(equalTo: preferredCategoriesImage.rightAnchor, constant: -20).isActive = true
        showProductsButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        showProductsButton.heightAnchor.constraint(equalToConstant: 130).isActive = true
    }
    
    func participatingBrands(){
        contentView.addSubview(participatingBrandsLabel)
        participatingBrandsLabel.topAnchor.constraint(equalTo: preferredCategoriesImage.bottomAnchor, constant: 20).isActive = true
        participatingBrandsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        participatingBrandsLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        participatingBrandsLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        participatingBrandsCollectionView.register(ParticipatingBrandsCollectionViewCell.self, forCellWithReuseIdentifier: itemParticipatingBrand)
        participatingBrandsCollectionView.delegate = self
        participatingBrandsCollectionView.dataSource = self
        
        contentView.addSubview(participatingBrandsCollectionView)
        participatingBrandsCollectionView.topAnchor.constraint(equalTo: participatingBrandsLabel.bottomAnchor, constant: 20).isActive = true
        participatingBrandsCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        participatingBrandsCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        participatingBrandsCollectionView.heightAnchor.constraint(equalToConstant: 130).isActive = true
    }
    
    func collections(){
        contentView.addSubview(collectionsLabel)
        collectionsLabel.topAnchor.constraint(equalTo: participatingBrandsCollectionView.bottomAnchor, constant: 10).isActive = true
        collectionsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        collectionsLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        collectionsLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        contentView.addSubview(bikerImage)
        bikerImage.topAnchor.constraint(equalTo: collectionsLabel.bottomAnchor, constant: 20).isActive = true
        bikerImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bikerImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        bikerImage.heightAnchor.constraint(equalToConstant: 135).isActive = true

        contentView.addSubview(shoesImage)
        shoesImage.topAnchor.constraint(equalTo: bikerImage.bottomAnchor, constant: 20).isActive = true
        shoesImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        shoesImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        shoesImage.heightAnchor.constraint(equalToConstant: 135).isActive = true

        contentView.addSubview(sportsImage)
        sportsImage.topAnchor.constraint(equalTo: shoesImage.bottomAnchor, constant: 20).isActive = true
        sportsImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        sportsImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        sportsImage.heightAnchor.constraint(equalToConstant: 135).isActive = true
    }
    
    func bestSeller(){
        contentView.addSubview(bestSellerLabel)
        bestSellerLabel.topAnchor.constraint(equalTo: sportsImage.bottomAnchor, constant: 20).isActive = true
        bestSellerLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        bestSellerLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        bestSellerLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        contentView.addSubview(seeMoreButton)
        seeMoreButton.topAnchor.constraint(equalTo: sportsImage.bottomAnchor, constant: 20).isActive = true
        seeMoreButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        seeMoreButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        seeMoreButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        bestSellerCollectionView.register(BestSellerCollectionViewCell.self, forCellWithReuseIdentifier: itemBestSeller)
        
        bestSellerCollectionView.delegate = self
        bestSellerCollectionView.dataSource = self
        
        contentView.addSubview(bestSellerCollectionView)
        bestSellerCollectionView.topAnchor.constraint(equalTo: bestSellerLabel.bottomAnchor, constant: 20).isActive = true
        bestSellerCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        bestSellerCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        bestSellerCollectionView.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
}
