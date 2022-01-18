//
//  ViewController.swift
//  TSDProject4
//
//  Created by Дмитрий Геращенко on 07.01.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let cloudImage = UIImageView()
    private let companyLabel = UILabel()
    private let signInLabel = UILabel()
    
    private let emailLabel = UILabel()
    private let emailTextField = UITextField()
    
    private let passwordLabel = UILabel()
    private let passwordTextField = UITextField()
    
    private let signInButton = UIButton()
    
    override func viewWillAppear(_ animated: Bool) {
        // подсказал Максим
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    
    // MARK: ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set View backgroundColor
        
        view.backgroundColor = .white
        
        // Call configureUI function
        
        configureUI()
        
        // Call hideKeyboardOnTap function
        // UIView extension that hide keyboard on tap
        
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
    
    // MARK:- Configure User Interface
    
    // MARK: Configure cloudImage
    
    private func configureCloudImage() {
        
        cloudImage.translatesAutoresizingMaskIntoConstraints = false
        cloudImage.contentMode = .scaleAspectFit
        cloudImage.image = UIImage(systemName: "cloud.fill")
        cloudImage.tintColor = .systemGray
        
        view.addSubview(cloudImage)
    }
    
    // MARK: Configure companyLabel
    
    private func configureCompanyLabel() {
        companyLabel.translatesAutoresizingMaskIntoConstraints = false
        companyLabel.text = "Company Label"
        companyLabel.adjustsFontSizeToFitWidth = true
        companyLabel.textColor = .systemGray
        companyLabel.font = UIFont.systemFont(ofSize: 30)
        
        view.addSubview(companyLabel)
    }
    
    // MARK: Configure signInLabel
    
    private func configureSignInLabel() {
        signInLabel.translatesAutoresizingMaskIntoConstraints = false
        signInLabel.text = "Sign In"
        signInLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        view.addSubview(signInLabel)
    }
    
    // MARK: Configure emailLabel
    
    private func configureEmailLabel() {
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.text = "Email"
        emailLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        emailLabel.textColor = .systemRed
        
        view.addSubview(emailLabel)
    }
    
    // MARK: Configure emailTextField
    
    private func configureEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.text = "example@email.com"
        emailTextField.keyboardType = .emailAddress
        emailTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        emailTextField.borderStyle = .none
        emailTextField.setUnderLine()
        
        view.addSubview(emailTextField)
    }
    
    // MARK: Configure passwordLabel
    
    private func configurePasswordLabel() {
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.text = "Password"
        passwordLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        passwordLabel.textColor = .systemRed
        
        view.addSubview(passwordLabel)
    }
    
    // MARK: Configure passwordTextField
    
    private func configurePasswordTextField() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.text = "strongPassword"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        passwordTextField.borderStyle = .none
        passwordTextField.setUnderLine()
        
        view.addSubview(passwordTextField)
    }
    
    // MARK: Configure signInButton
    
    private func configureSignInButton() {
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.backgroundColor = .systemRed
        signInButton.tintColor = .white
        signInButton.layer.cornerRadius = 15
        signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        
        view.addSubview(signInButton)
    }
    
    // MARK: Configure View User Interface
    // Invoke all functions that configure UI.
    
    private func configureUI() {
        configureCloudImage()
        configureCompanyLabel()
        configureSignInLabel()
        configureEmailLabel()
        configureEmailTextField()
        configurePasswordLabel()
        configurePasswordTextField()
        configureSignInButton()
    }
    
    //
    // MARK:- Controller Section
    //
    
    // MARK: FUNCTION SignInButtonTapped
    // Try to create User example. If person is valid then transit to OrderView else PopUp Alert.
    
    @objc private func signInButtonTapped() {
        
        let user =
            User(
                email: emailTextField.text ?? "",
                password: passwordTextField.text ?? "",
                tableInfo: .init()
            )
        
        let orderVC = OrderViewController(user: user)
        
        if validatePerson(user) {
            navigationController?.pushViewController(orderVC, animated: true)
        } else {
            let alertController = UIAlertController(title: "Validation Error", message: "Your email or password are wrong", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)
            
        }
        
    }
    
    // MARK: FUNCTION validateUser
    // Check user entered email and password and return Bool.
    
    private func validatePerson(_ user: User) -> Bool {
        
        let regularExpressionForEmail = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let testEmail = NSPredicate(format:"SELF MATCHES %@", regularExpressionForEmail)
        let emailValidation = testEmail.evaluate(with: user.email)
            
        let passwordValidation = !user.password.isEmpty
        
        return emailValidation && passwordValidation
    }
    
    
    
}

