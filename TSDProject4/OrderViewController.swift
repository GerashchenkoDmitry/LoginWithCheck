//
//  OrderView.swift
//  TSDProject4
//
//  Created by Дмитрий Геращенко on 09.01.2022.
//

import UIKit

class OrderViewController: UIViewController {
    
    let fullNameLabel = UILabel()
    let fullNameTextField = UITextField()
    let guestsNumberLabel = UILabel()
    let guestsNumberTextField = UITextField()
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Cafe"
        // MARK: Set background color to white
        
        view.backgroundColor = .white
        
        // MARK: Create fullNameLabel
        
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        fullNameLabel.text = "Your full name"
        fullNameLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        fullNameLabel.textColor = .systemRed
        
        view.addSubview(fullNameLabel)
        
        // MARK: Create fullNameTextField
        
        fullNameTextField.translatesAutoresizingMaskIntoConstraints = false
        fullNameTextField.placeholder = "Enter your full name"
        fullNameTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        fullNameTextField.borderStyle = .none
        fullNameTextField.setUnderLine()
        
        view.addSubview(fullNameTextField)
        
        // MARK: Create guestsNumberLabel
        
        guestsNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        guestsNumberLabel.text = "Number of guests"
        guestsNumberLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        guestsNumberLabel.textColor = .systemRed
        
        view.addSubview(guestsNumberLabel)
        
        // MARK: Create guestsNumberTextField
        
        guestsNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        guestsNumberTextField.placeholder = "Enter number of guests"
        guestsNumberTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        guestsNumberTextField.borderStyle = .none
        guestsNumberTextField.setUnderLine()
        
        view.addSubview(guestsNumberTextField)
        
        NSLayoutConstraint.activate([
            
            // MARK: Set fullnameLabel constraints
            
            fullNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
            fullNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            fullNameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 24),
            
            // MARK: Set fullnameTextField constraints

            fullNameTextField.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 6),
            fullNameTextField.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
            fullNameTextField.trailingAnchor.constraint(equalTo: fullNameLabel.trailingAnchor),
            fullNameTextField.heightAnchor.constraint(equalToConstant: 30),
            
            // MARK: Set guestsNumberLabel constraints
            
            guestsNumberLabel.topAnchor.constraint(equalTo: fullNameTextField.bottomAnchor, constant: 16),
            guestsNumberLabel.leadingAnchor.constraint(equalTo: fullNameTextField.leadingAnchor),
            guestsNumberLabel.trailingAnchor.constraint(equalTo: fullNameTextField.trailingAnchor),
            guestsNumberLabel.heightAnchor.constraint(equalToConstant: 24),
            
            // MARK: Set guestsNumberTextField constraints

            guestsNumberTextField.topAnchor.constraint(equalTo: guestsNumberLabel.bottomAnchor, constant: 6),
            guestsNumberTextField.leadingAnchor.constraint(equalTo: guestsNumberLabel.leadingAnchor),
            guestsNumberTextField.trailingAnchor.constraint(equalTo: guestsNumberLabel.trailingAnchor),
            guestsNumberTextField.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
}
