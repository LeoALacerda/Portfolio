//
//  Screen3ViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 27/04/23.
//

import UIKit

class Screen3ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureLogin()
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    override func viewWillAppear(_ animated: Bool) {
        emailTextField.text = ""
        emailTextField.layer.borderWidth = 1.5
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.text = ""
        passwordTextField.layer.borderWidth = 1.5
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    func configureTextField(textField: UITextField){
        textField.layer.cornerRadius = 15
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.clipsToBounds = true
        
        textField.delegate = self
    }
    
    func configureLogin(){
        signInButton.isEnabled = false
        
        titleLabel.shadowColor = UIColor.lightGray
        titleLabel.shadowOffset = CGSize(width:-1, height: -1)
        
        configureTextField(textField: emailTextField)
        configureTextField(textField: passwordTextField)
    }
    
    func showAlert(title: String){
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okButton)
        self.present(alertController, animated: true)
    }
    
    @IBAction func pressedForgotPasswordButton(_ sender: UIButton) {
        
        let vc: ForgotPasswordViewController? = UIStoryboard(name: "ForgotPasswordViewController", bundle: nil).instantiateViewController(identifier: "ForgotPasswordViewController", creator: { coder -> ForgotPasswordViewController? in
            return ForgotPasswordViewController(coder: coder, name: self.emailTextField.text ?? "")
        })
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    @IBAction func pressedSignInButton(_ sender: UIButton) {
        
        if self.emailTextField.validateEmail() {
            if self.passwordTextField.validatePassword(){
                let vc: HomeViewController? = UIStoryboard(name: "HomeViewController", bundle: nil).instantiateViewController(identifier: "HomeViewController", creator: {coder -> HomeViewController? in
                    return HomeViewController(coder: coder, mail: self.emailTextField.text ?? "", password: self.passwordTextField.text ?? "")
                })
                vc?.modalPresentationStyle = .fullScreen
                present(vc ?? UIViewController(), animated: true)
            }else{
                self.showAlert(title: "The password must be at least 8 characters!")
            }
        }else{
            self.showAlert(title: "Please enter a valid email address!")
        }
    }
    
    @IBAction func pressedSignUpButton(_ sender: UIButton) {
        let vc: SignUpViewController? = UIStoryboard(name: "SignUpViewController", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

extension Screen3ViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField{
            passwordTextField.becomeFirstResponder()
        }else{
            textField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if emailTextField.hasText && passwordTextField.hasText{
            signInButton.isEnabled = true
        }else{
            signInButton.isEnabled = false
            if textField.hasText == false{
                textField.layer.borderWidth = 1.5
                textField.layer.borderColor = UIColor.lightGray.cgColor
            }else{
                textField.layer.borderColor = UIColor(named: "OrangeMeuTreino")?.cgColor
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension UITextField{
    
    func validateEmail() -> Bool{
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let validateRegex = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return validateRegex.evaluate(with: self.text)
        
    }
    
    func validatePassword() -> Bool{
        let passwordRegex = ".{8,}"
        let validateRegex = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return validateRegex.evaluate(with: self.text)

    }
    
}
