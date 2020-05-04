//
//  SignUpController.swift
//  ElektraTest
//
//  Created by Alejandro on 04/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

extension SignUpViewController{
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        signUpButton.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
    }
    
    @objc func handleSignUp(){
        let alert = UIAlertController(title: "¡Felicidades!", message: "Tu registro se ha realizado de forma exitosa.", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (alert) in
            self.navigationController?.popViewController(animated: true)
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
}
