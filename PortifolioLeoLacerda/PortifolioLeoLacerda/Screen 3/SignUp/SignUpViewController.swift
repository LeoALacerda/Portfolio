//
//  SignUpViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 02/05/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configSignUpController()
    }
    
    func configTextField(textField: UITextField){
        textField.layer.cornerRadius = 15
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.clipsToBounds = true
        
        textField.delegate = self
    }
    
    func configSignUpController (){
        signUpButton.isEnabled = false
        
        titleLabel.shadowColor = UIColor.lightGray
        titleLabel.shadowOffset = CGSize(width:-1, height: -1)
        
        configTextField(textField: firstNameTextField)
        firstNameTextField.autocapitalizationType = .words
        configTextField(textField: lastNameTextField)
        lastNameTextField.autocapitalizationType = .words
        configTextField(textField: emailTextField)
        configTextField(textField: passwordTextField)
        configTextField(textField: confirmPasswordTextField)
    }
    
    func showAlert(title: String){
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okButton)
        self.present(alertController, animated: true)
    }
    
    func resetTextField(textField: UITextField){
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.text = ""
    }
    
    @IBAction func pressedSignUpButton(_ sender: UIButton) {
        if emailTextField.validateEmail(){
            if passwordTextField.validatePassword() && confirmPasswordTextField.validatePassword(){
                if passwordTextField.text == confirmPasswordTextField.text{
                    let alertController = UIAlertController(title: "Congratulations!", message: "Your account was created successfully.", preferredStyle: .alert)
                    
                    let okButton = UIAlertAction(title: "OK", style: .default) { action in
                        self.navigationController?.popViewController(animated: true)
                    }
                    alertController.addAction(okButton)
                    present(alertController, animated: true)
                }else{
                    showAlert(title: "Passwords do not match!")
                }
            }else{
                showAlert(title: "The password must be at least 8 characters!")
            }
        }else{
            showAlert(title: "Please enter a valid email address!")
        }
    }
}

extension SignUpViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
        textField.layer.borderWidth = 2
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.firstNameTextField{
            self.lastNameTextField.becomeFirstResponder()
        }else if textField == self.lastNameTextField{
            self.emailTextField.becomeFirstResponder()
        }else if textField == self.emailTextField{
            self.passwordTextField.becomeFirstResponder()
        }else if textField == self.passwordTextField{
            self.confirmPasswordTextField.becomeFirstResponder()
        }else{
            self.confirmPasswordTextField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if firstNameTextField.hasText && lastNameTextField.hasText && emailTextField.hasText && passwordTextField.hasText && confirmPasswordTextField.hasText && confirmPasswordTextField.hasText {
            signUpButton.isEnabled = true
            firstNameTextField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
            lastNameTextField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
            emailTextField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
            passwordTextField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
            confirmPasswordTextField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
        } else {
            signUpButton.isEnabled = false
            if textField.hasText == false{
                textField.layer.borderWidth = 1.5
                textField.layer.borderColor = UIColor.lightGray.cgColor
            } else {
                textField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
