//
//  Screen4ViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 27/04/23.
//

import UIKit

class Screen4ViewController: UIViewController {

    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var profileNameTextField: UITextField!
    
    var viewModel: Screen4ViewModel = Screen4ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureScreen4()
    }
    
    private func configureScreen4(){
        profileLabel.shadowColor = UIColor.lightGray
        profileLabel.shadowOffset = CGSize(width:-1, height: -1)
        
        profileNameTextField.delegate = self
        profileNameTextField.autocapitalizationType = .words
                
        profileImageView.layer.cornerRadius = 80
    }
    
    private func configureTableView(){
        profileTableView.dataSource = self
        profileTableView.delegate = self
        profileTableView.register(Screen4TableViewCell.nib(), forCellReuseIdentifier: Screen4TableViewCell.identifier)
        profileTableView.allowsSelection = false
    }
    
    @IBAction func pressedEditButton(_ sender: UIButton) {
        configureImagePicker()
    }
    
    @IBAction func pressedAddButton(_ sender: UIButton) {
        if let name = profileNameTextField.text, !name.isEmpty{
            viewModel.addProfile(profile: Profile(name: profileNameTextField.text ?? "", profileImage: profileImageView.image ?? UIImage()))
            profileTableView.reloadData()
            profileImageView.image = UIImage(systemName: "person.circle.fill")
            profileNameTextField.text = ""
            profileTableView.scrollToRow(at: IndexPath(row: (viewModel.getListSize() - 1), section: 0), at: .bottom, animated: true)
        }else{
            let alertController = UIAlertController(title: "Ops!", message: "Name field is required.", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(okButton)
            present(alertController, animated: true)
        }
    }
    
    @IBAction func pressedClearAllButton(_ sender: UIButton) {
        if viewModel.getListSize() == 0{
            let alertController = UIAlertController(title: "Ops!", message: "The profile list is already empty.", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .default) { action in
                self.dismiss(animated: true)
            }
            alertController.addAction(okButton)
            present(alertController, animated: true)
        }else{
            let alertController = UIAlertController(title: "Delete all profiles?", message: "Are you sure you want to permanently remove all profiles? This cannot be undone.", preferredStyle: .alert)
            
            let yesButton = UIAlertAction(title: "Yes, clear all", style: .destructive) { action in
                self.viewModel.clearAllProfile()
                self.profileTableView.reloadData()
            }
            let noButton = UIAlertAction(title: "No", style: .default) { action in
                self.dismiss(animated: true)
            }
            alertController.addAction(yesButton)
            alertController.addAction(noButton)
            present(alertController, animated: true)
        }
    }
}

extension Screen4ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.getListSize()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Screen4TableViewCell.identifier, for: indexPath) as? Screen4TableViewCell
        cell?.configureCell(profile: viewModel.getProfile(index: indexPath.row))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        114
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
        }
    }

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Deletar") { _, _, completionHandler in
                completionHandler(true)
            self.viewModel.deleteProfile(index: indexPath.row)
            self.profileTableView.reloadData()
        }
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        configuration.performsFirstActionWithFullSwipe = false
        return configuration
    }
}

extension Screen4ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

extension Screen4ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func configureImagePicker(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editedImage = info[.editedImage] as? UIImage{
            profileImageView.image = editedImage
        }else if let originalImage = info[.originalImage] as? UIImage {
            profileImageView.image = originalImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
}
