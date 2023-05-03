//
//  Screen4TableViewCell.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 28/04/23.
//

import UIKit

class Screen4TableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    
    static let identifier: String = String(describing: Screen4TableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.tintColor = .black
    }
    
    func configureCell(profile: Profile){
        profileLabel.text = profile.name
        profileImageView.image = profile.profileImage
        profileImageView.layer.cornerRadius = 45
    }
    
}
