//
//  SignUpViewController.swift
//  ElektraTest
//
//  Created by Alejandro on 03/05/20.
//  Copyright © 2020 Alejandro. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    //MARK: - TextField's
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Nombre"
        textField.textAlignment = .center
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.textAlignment = .center
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Contraseña"
        textField.textAlignment = .center
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let phoneTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Teléfono"
        textField.textAlignment = .center
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Registrarse", for: .normal)
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Constraints
    func setupView(){
        
        view.backgroundColor = .white
        navigationItem.title = "Crear cuenta"
        
        view.addSubview(nameTextField)
        nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(emailTextField)
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(passwordTextField)
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(phoneTextField)
        phoneTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        phoneTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        phoneTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        phoneTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        view.addSubview(signUpButton)
        signUpButton.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 20).isActive = true
        signUpButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80).isActive = true
        signUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -80).isActive = true
        signUpButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
}
