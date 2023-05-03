//
//  ForgotPasswordViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 28/04/23.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var resetPasswordButton: UIButton!
    @IBOutlet weak var newPasswordLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var emailForgotPassword: String = ""
    
    let name: String
    
    required init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configForgotPassword()
    }
    
    func configTextField(_ textField: UITextField){
        textField.layer.cornerRadius = 15
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.clipsToBounds = true
        textField.delegate = self
        
        if name.isEmpty == false{
            textField.text = name
            textField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
            textField.layer.borderWidth = 2
            
            resetPasswordButton.isEnabled = true
        }
    }
    
    private func configForgotPassword(){
        resetPasswordButton.isEnabled = false
        
        titleLabel.shadowColor = UIColor.lightGray
        titleLabel.shadowOffset = CGSize(width:-1, height: -1)
        
        configTextField(emailTextField)
        
        newPasswordLabel.text = "Please enter your email address. You will receive a link to create a new password via email."
    }
    
    func showAlert(title: String){
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okButton)
        self.present(alertController, animated: true)
    }
    
    @IBAction func pressedResetPasswordButton(_ sender: UIButton) {
        
        if emailTextField.validateEmail() {
            emailForgotPassword = emailTextField.text ?? ""
            
            let alertController = UIAlertController(title: "Check your email!", message: "A message has been sent to '\(emailForgotPassword)' with instructions to reset your password.", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .default) { action in
                self.navigationController?.popViewController(animated: true)
            }
            alertController.addAction(okButton)
            present(alertController, animated: true)
        }else{
            newPasswordLabel.textColor = UIColor.red
            newPasswordLabel.text = "Please enter a valid email address!"
            emailTextField.layer.borderColor = UIColor.red.cgColor
        }
        emailTextField.resignFirstResponder()
    }
}

extension ForgotPasswordViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
        textField.layer.borderWidth = 2
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText == true{
            resetPasswordButton.isEnabled = true
        }else{
            newPasswordLabel.text = "Please enter your email address. You will receive a link to create a new password via email."
            newPasswordLabel.textColor = UIColor.black
            textField.layer.borderWidth = 1.5
            textField.layer.borderColor = UIColor.lightGray.cgColor
            resetPasswordButton.isEnabled = false
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
