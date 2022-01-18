//
//  OrderView.swift
//  TSDProject4
//
//  Created by Дмитрий Геращенко on 09.01.2022.
//

import UIKit

final class OrderViewController: UIViewController {
    
    var user: User
    
    init(user: User) {
        self.user = user
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let fullNameLabel = UILabel()
    private let fullNameTextField = UITextField()
    
    private let guestsNumberLabel = UILabel()
    private let numberOfGuestsTextField = UITextField()
    
    private let numberOfTableLabel = UILabel()
    private let numberOfTableTextField = UITextField()
    
    private let reserveTableLabel = UILabel()
    private let reserveTableSwitch = UISwitch()
    
    private let preCashLabel = UILabel()
    private let preCashSwitch = UISwitch()
    
    private let vipRoomLabel = UILabel()
    private let vipRoomSwitch = UISwitch()
    
    private let checkButton = UIButton()
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.red, .font: UIFont.systemFont(ofSize: 24, weight: .semibold)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set navigation bar title
        
        self.title = "Cafe Mario"
        
        // Set background color to white
        
        view.backgroundColor = .white
        
        //          Подсказал Максим
        //        [
        //            fullNameLabel, fullNameTextField, guestsNumberLabel, guestsNumberTextField, tableNumberLabel, tableNumberTextField, reserveTableLabel, reserveTableSwitch, vipRoomSwitch, preCashSwitch
        //        ].forEach { (view) in
        //            view.translatesAutoresizingMaskIntoConstraints = false
        //            self.view.addSubview(view)
        //        }
        
        configureFullNameLabel()
        configureFullNameTextField()
        
        configureGuestsNumberLabel()
        configureGuestsNumberTextField()
        
        configureTableNumberLabel()
        configureTableNumberTextField()
        
        configureReserveTableLabel()
        configureReserveTableSwitch()
        
        configurePreCashLabel()
        configurePreCashSwitch()
        
        configureVipRoomLabel()
        configureVipRoomSwitch()
        
        configureCheckButton()
        
        // MARK: Hide keyboard on tap
        
        self.hideKeyboardOnTap()
        
        let fullNameLabelConstraints = [
            fullNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            fullNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            fullNameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 24)
        ]
        NSLayoutConstraint.activate(
            fullNameLabelConstraints + [
                
                // MARK: Set fullnameLabel constraints
                // допилить
                // MARK: Set fullnameTextField constraints
                
                fullNameTextField.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 6),
                fullNameTextField.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
                fullNameTextField.trailingAnchor.constraint(equalTo: fullNameLabel.trailingAnchor),
                fullNameTextField.heightAnchor.constraint(equalToConstant: 30),
                
                // MARK: Set guestsNumberLabel constraints
                
                guestsNumberLabel.topAnchor.constraint(equalTo: fullNameTextField.bottomAnchor, constant: 30),
                guestsNumberLabel.leadingAnchor.constraint(equalTo: fullNameTextField.leadingAnchor),
                guestsNumberLabel.trailingAnchor.constraint(equalTo: fullNameTextField.trailingAnchor),
                guestsNumberLabel.heightAnchor.constraint(equalToConstant: 24),
                
                // MARK:- Set guestsNumberTextField constraints
                
                numberOfGuestsTextField.topAnchor.constraint(equalTo: guestsNumberLabel.bottomAnchor, constant: 6),
                numberOfGuestsTextField.leadingAnchor.constraint(equalTo: guestsNumberLabel.leadingAnchor),
                numberOfGuestsTextField.trailingAnchor.constraint(equalTo: guestsNumberLabel.trailingAnchor),
                numberOfGuestsTextField.heightAnchor.constraint(equalToConstant: 30),
                
                // MARK: Set tableNumberLabel constraints
                
                numberOfTableLabel.topAnchor.constraint(equalTo: numberOfGuestsTextField.bottomAnchor, constant: 30),
                numberOfTableLabel.leadingAnchor.constraint(equalTo: numberOfGuestsTextField.leadingAnchor),
                numberOfTableLabel.trailingAnchor.constraint(equalTo: numberOfGuestsTextField.trailingAnchor),
                numberOfTableLabel.heightAnchor.constraint(equalToConstant: 24),
                
                // MARK: Set tableNumberTextField constraints
                
                numberOfTableTextField.topAnchor.constraint(equalTo: numberOfTableLabel.bottomAnchor, constant: 6),
                numberOfTableTextField.leadingAnchor.constraint(equalTo: numberOfTableLabel.leadingAnchor),
                numberOfTableTextField.trailingAnchor.constraint(equalTo: numberOfTableLabel.trailingAnchor),
                numberOfTableTextField.heightAnchor.constraint(equalToConstant: 30),
                
                // MARK: Set reserveTableLabel constraints
                
                reserveTableLabel.topAnchor.constraint(equalTo: numberOfTableTextField.bottomAnchor, constant: 60),
                reserveTableLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
                reserveTableLabel.heightAnchor.constraint(equalToConstant: 24),
                
                // MARK: Set reserveTableSwitch constraints
                
                reserveTableSwitch.topAnchor.constraint(equalTo: reserveTableLabel.topAnchor),
//                reserveTableSwitch.leadingAnchor.constraint(equalTo: reserveTableLabel.leadingAnchor),
                reserveTableSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
                reserveTableSwitch.heightAnchor.constraint(equalToConstant: 30),
                
                // MARK: Set preCashLabel constraints
                
                preCashLabel.topAnchor.constraint(equalTo: reserveTableLabel.bottomAnchor, constant: 40),
                preCashLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
                preCashLabel.heightAnchor.constraint(equalToConstant: 24),
                
                // MARK: Set preCashSwitch constraints
                
                preCashSwitch.topAnchor.constraint(equalTo: preCashLabel.topAnchor),
//                reserveTableSwitch.leadingAnchor.constraint(equalTo: reserveTableLabel.leadingAnchor),
                preCashSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
                preCashSwitch.heightAnchor.constraint(equalToConstant: 30),
                
                // MARK: Set vipRoomLabel constraints
                
                vipRoomLabel.topAnchor.constraint(equalTo: preCashLabel.bottomAnchor, constant: 40),
                vipRoomLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
                vipRoomLabel.heightAnchor.constraint(equalToConstant: 24),
                
                // MARK: Set vipRoomSwitch constraints
                
                vipRoomSwitch.topAnchor.constraint(equalTo: vipRoomLabel.topAnchor),
//                reserveTableSwitch.leadingAnchor.constraint(equalTo: reserveTableLabel.leadingAnchor),
                vipRoomSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
                vipRoomSwitch.heightAnchor.constraint(equalToConstant: 30),
                
                // MARK: Set checkButton constraints
                
//                checkButton.topAnchor.constraint(equalTo: vipRoomLabel.bottomAnchor, constant: 100),
                checkButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
                checkButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
                checkButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
                checkButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
                checkButton.heightAnchor.constraint(equalToConstant: 50),
            ]
        )
    }
    // MARK: ViewDidLayoutSubviews
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        fullNameTextField.setUnderLine()
        numberOfGuestsTextField.setUnderLine()
        numberOfTableTextField.setUnderLine()
    }
    
    // MARK: Configure fullNameLabel
    
    private func configureFullNameLabel() {
        
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        fullNameLabel.text = "Your full name"
        fullNameLabel.font = UIFont.systemFont(ofSize: 20)
        fullNameLabel.textColor = .systemRed
        
        view.addSubview(fullNameLabel)
    }
    
    // MARK: Configure fullNameTextField
    
    private func configureFullNameTextField() {
        fullNameTextField.translatesAutoresizingMaskIntoConstraints = false
        fullNameTextField.placeholder = "Enter your full name"
        fullNameTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        fullNameTextField.borderStyle = .none
        fullNameTextField.setUnderLine()
        
        view.addSubview(fullNameTextField)
    }
    
    // MARK: Configure guestsNumberLabel
    
    private func configureGuestsNumberLabel() {
        guestsNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        guestsNumberLabel.text = "Number of guests"
        guestsNumberLabel.font = UIFont.systemFont(ofSize: 20)
        guestsNumberLabel.textColor = .systemRed
        
        view.addSubview(guestsNumberLabel)
    }
    
    // MARK: Configure guestsNumberTextField
    
    private func configureGuestsNumberTextField() {
        numberOfGuestsTextField.translatesAutoresizingMaskIntoConstraints = false
        numberOfGuestsTextField.placeholder = "Enter number of guests"
        numberOfGuestsTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        numberOfGuestsTextField.borderStyle = .none
        numberOfGuestsTextField.setUnderLine()
        
        view.addSubview(numberOfGuestsTextField)
    }
    
    // MARK: Configure tableNumberLabel
    
    private func configureTableNumberLabel() {
        numberOfTableLabel.translatesAutoresizingMaskIntoConstraints = false
        numberOfTableLabel.text = "Number of table"
        numberOfTableLabel.font = UIFont.systemFont(ofSize: 20)
        numberOfTableLabel.textColor = .systemRed
        
        view.addSubview(numberOfTableLabel)
    }
    
    // MARK: Configure tableNumberTextField
    
    private func configureTableNumberTextField() {
        numberOfTableTextField.translatesAutoresizingMaskIntoConstraints = false
        numberOfTableTextField.placeholder = "Enter number of table"
        numberOfTableTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        numberOfTableTextField.borderStyle = .none
        numberOfTableTextField.setUnderLine()
        
        view.addSubview(numberOfTableTextField)
    }
    
    // MARK: Configure reserveTableLabel
    
    private func configureReserveTableLabel() {
        reserveTableLabel.translatesAutoresizingMaskIntoConstraints = false
        reserveTableLabel.text = "Have you booked a table?"
        reserveTableLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        reserveTableLabel.textColor = .systemRed
        
        view.addSubview(reserveTableLabel)
    }
    
    // MARK: Configure reserveTableSwitch
    
    func configureReserveTableSwitch() {
        reserveTableSwitch.translatesAutoresizingMaskIntoConstraints = false
        reserveTableSwitch.isOn = true
        
        view.addSubview(reserveTableSwitch)
    }
    
    // MARK: Configure preCashLabel
    
    private func configurePreCashLabel() {
        preCashLabel.translatesAutoresizingMaskIntoConstraints = false
        preCashLabel.text = "Prepayment?"
        preCashLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        preCashLabel.textColor = .systemRed
        
        view.addSubview(preCashLabel)
    }
    
    // MARK: Configure preCashSwitch
    
    private func configurePreCashSwitch() {
        preCashSwitch.translatesAutoresizingMaskIntoConstraints = false
        preCashSwitch.isOn = false
        
        view.addSubview(preCashSwitch)
    }
    
    // MARK: Configure vipRoomLabel
    
    private func configureVipRoomLabel() {
        vipRoomLabel.translatesAutoresizingMaskIntoConstraints = false
        vipRoomLabel.text = "Do you need VIP room?"
        vipRoomLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        vipRoomLabel.textColor = .systemRed
        
        view.addSubview(vipRoomLabel)
    }
    
    // MARK: Configure vipRoomSwitch
    
    private func configureVipRoomSwitch() {
        vipRoomSwitch.translatesAutoresizingMaskIntoConstraints = false
        vipRoomSwitch.isOn = false
        
        view.addSubview(vipRoomSwitch)
    }
    
    // MARK: Configure checkButton()
    
    private func configureCheckButton() {
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.setTitle("Check", for: .normal)
        checkButton.backgroundColor = .systemRed
        checkButton.tintColor = .white
        checkButton.layer.cornerRadius = 15
        checkButton.addTarget(self, action: #selector(checkButtonTapped), for: .touchUpInside)
        view.addSubview(checkButton)
    }
    
    // MARK:- checkButton tapped
    
    @objc private func checkButtonTapped() {
        if validateUserInput() {
            navigationController?.pushViewController(CheckViewController(user: self.user), animated: true)
        } else {
            let alertController = UIAlertController(title: "Invalid User Input", message: "Yout full name of number of guests or number of table is incorrect. Please enter the correct value.", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(action)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    // Validate user input fullname function
    
    private func validateUserFullName() -> Bool {
        
        guard let userFullName = fullNameTextField.text else {
            return false
        }
        
        let regularExpressionForFullName = "[A-Za-z]{2,64}"
        let testFullName = NSPredicate(format: "SELF MATCHES %@", regularExpressionForFullName)
        let fullNameValidation = testFullName.evaluate(with: userFullName)
        
        self.user.tableInfo?.userFullName = userFullName
        
        return fullNameValidation
    }
    
    // Validate user input number of guests function
    
    private func validateNumberOfGuests() -> Bool {
        
        guard let numberOfGuestsString = numberOfGuestsTextField.text else {
            return false
        }
        
        guard let numberOfGuestsInt = Int(numberOfGuestsString) else {
            return false
        }
        self.user.tableInfo?.numberOfGuests = numberOfGuestsInt
        return numberOfGuestsInt < 9
    }
    
    // Validate number of user input table
    
    private func validateNumberOfTable() -> Bool {
        
        guard let numberOfTableString = numberOfTableTextField.text else {
            return false
        }
        
        guard let numberOfTableInt = Int(numberOfTableString) else {
            return false
        }
        
        self.user.tableInfo?.numberOfTable = numberOfTableInt
        return numberOfTableInt < 9
    }
    
    private func validateUserInput() -> Bool {
        validateUserFullName() && validateNumberOfGuests() && validateNumberOfTable()
    }
    
   
    
    
    
}
