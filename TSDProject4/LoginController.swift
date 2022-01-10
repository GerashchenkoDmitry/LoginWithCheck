//
//  ViewController.swift
//  TSDProject4
//
//  Created by Дмитрий Геращенко on 07.01.2022.
//

import UIKit

class LoginController: UIViewController {
        
    let cloudImage = UIImageView()
    let companyLabel = UILabel()
    let signInLabel = UILabel()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let signInButton = UIButton()
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Create backgroundColor
        
        view.backgroundColor = .white
        
        // MARK: Create cloudImage

        cloudImage.translatesAutoresizingMaskIntoConstraints = false
        cloudImage.contentMode = .scaleAspectFit
        cloudImage.image = UIImage(systemName: "cloud.fill")
        cloudImage.tintColor = .systemGray
        
        view.addSubview(cloudImage)
        
        // MARK: Create companyLabel

        companyLabel.translatesAutoresizingMaskIntoConstraints = false
        companyLabel.text = "Company Label"
        companyLabel.adjustsFontSizeToFitWidth = true
        companyLabel.textColor = .systemGray
        companyLabel.font = UIFont.systemFont(ofSize: 30)
        
        view.addSubview(companyLabel)
        
        // MARK: Create signInLabel

        signInLabel.translatesAutoresizingMaskIntoConstraints = false
        signInLabel.text = "Sign In"
        signInLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        view.addSubview(signInLabel)
        
        // MARK: Create emailLabel

        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = "Email"
        emailLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        emailLabel.textColor = .systemRed
        
        view.addSubview(emailLabel)
        
        // MARK: Create emailTextField

        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.text = "example@email.com"
        emailTextField.keyboardType = .emailAddress
        emailTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        emailTextField.borderStyle = .none
        emailTextField.setUnderLine()
        
        // Bottom line under emailTextField
        
//        let bottomLine = CALayer()
//        bottomLine.frame = CGRect(x: 0.0, y: 75 - 1, width: 300, height: 1.0)
//        bottomLine.backgroundColor = UIColor.black.cgColor
//        emailTextField.layer.addSublayer(bottomLine)
        
        view.addSubview(emailTextField)
        
        // MARK: Create passwordLabel
        
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.text = "Password"
        passwordLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        passwordLabel.textColor = .systemRed
        
        view.addSubview(passwordLabel)
        
        // MARK: Create passwordTextField
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.text = "strongPassword"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        passwordTextField.borderStyle = .none
        passwordTextField.setUnderLine()

        view.addSubview(passwordTextField)
        
        // MARK: Create signInButton
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.backgroundColor = .systemRed
        signInButton.tintColor = .white
        signInButton.layer.cornerRadius = 15
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        
        view.addSubview(signInButton)
        
        // MARK: Hide keyboard on tap

        self.hideKeyboardOnTap()
        
        NSLayoutConstraint.activate([
            
            // MARK: Set cloudImage constraints

            cloudImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            cloudImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cloudImage.widthAnchor.constraint(equalToConstant: 200),
            cloudImage.heightAnchor.constraint(equalToConstant: 200),
            
            // MARK: Set companyLabel constraints

            companyLabel.topAnchor.constraint(equalTo: cloudImage.bottomAnchor),
            companyLabel.centerXAnchor.constraint(equalTo: cloudImage.centerXAnchor),
//            companyLabel.widthAnchor.constraint(equalToConstant: 200),
            companyLabel.heightAnchor.constraint(equalToConstant: 50),
            
            // MARK: Set signInLabel constraints

            signInLabel.topAnchor.constraint(equalTo: companyLabel.bottomAnchor, constant: 10),
            signInLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            signInLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
//            signInLabel.widthAnchor.constraint(equalToConstant: 100),
            signInLabel.heightAnchor.constraint(equalToConstant: 36),
            
            // MARK: Set emailLabel constraints
            
            emailLabel.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 14),
            emailLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            emailLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
//            signInLabel.widthAnchor.constraint(equalToConstant: 100),
            emailLabel.heightAnchor.constraint(equalToConstant: 24),
            
            // MARK: Set emailTextField constraints

            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 0),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
//            signInLabel.widthAnchor.constraint(equalToConstant: 100),
            emailTextField.heightAnchor.constraint(equalToConstant: 30),
            
            // MARK: Set passwordLabel constraints

            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 14),
            passwordLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            passwordLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            passwordLabel.heightAnchor.constraint(equalToConstant: 24),
            
            // MARK: Set passwordTextField constraints

            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 0),
            passwordTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            
            // MARK: Set signInButton constraints

            signInButton.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 100),
            signInButton.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor, constant: 30),
            signInButton.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor, constant: -30),
            signInButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func signInButtonTapped() {
        let orderVC = OrderViewController()
        
        navigationController?.pushViewController(orderVC, animated: true)
        
    }
    
    
}

