//
//  ApplicationsCollectionViewCell.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 28/04/23.
//

import UIKit

class ApplicationsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var appLabel: UILabel!
    
    static let identifier: String = String(describing: ApplicationsCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        appImageView.layer.cornerRadius = 20
    }
    
    func setupCollectionViewCell(application: Application){
        appImageView.image = UIImage(named: application.appImage)
        appLabel.text = application.appImage
    }

}
