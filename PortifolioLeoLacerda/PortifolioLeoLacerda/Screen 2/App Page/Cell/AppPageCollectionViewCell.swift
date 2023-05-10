//
//  AppPageCollectionViewCell.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 10/05/23.
//

import UIKit

class AppPageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var screenshotImageView: UIImageView!
   
    static let identifier: String = String(describing: AppPageCollectionViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(imageName: String){
        screenshotImageView.image = UIImage(named: imageName)
    }
}
