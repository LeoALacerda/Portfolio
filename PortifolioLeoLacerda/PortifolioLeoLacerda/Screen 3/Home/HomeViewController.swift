//
//  HomeViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 28/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    var email: String
    var password: String
    
    required init?(coder: NSCoder, mail: String, password: String) {
        self.email = mail
        self.password = password
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configHomePage()
    }
    
    func configHomePage(){
        profileImageView.layer.borderWidth = 2
        profileImageView.layer.cornerRadius = profileImageView.frame.size.height/2
        profileImageView.layer.borderColor = UIColor.white.cgColor
        
        emailLabel.text = "Email: " + email
        passwordLabel.text = "Password: " + password
    }
    
    @IBAction func pressedLogoutButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
