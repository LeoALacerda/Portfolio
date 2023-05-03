//
//  Screen2ViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 27/04/23.
//

import UIKit

class Screen2ViewController: UIViewController {
    
    @IBOutlet weak var applicationsTableView: UITableView!
    @IBOutlet weak var applicationsLabel: UILabel!
    
    let viewModel: ApplicationsViewModel = ApplicationsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView(){
        applicationsTableView.dataSource = self
        applicationsTableView.delegate = self
        applicationsTableView.register(ApplicationsTableViewCell.nib(), forCellReuseIdentifier: ApplicationsTableViewCell.identifier)
        applicationsTableView.allowsSelection = false
    }

}

extension Screen2ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.listApp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ApplicationsTableViewCell.identifier, for: indexPath) as? ApplicationsTableViewCell
        cell?.setupCell(apps: viewModel.listApp[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}
