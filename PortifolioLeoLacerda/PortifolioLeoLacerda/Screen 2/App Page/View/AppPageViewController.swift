//
//  AppPageViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 03/05/23.
//

import UIKit

class AppPageViewController: UIViewController {

    @IBOutlet weak var appLabel: UILabel!
    @IBOutlet weak var appSubLabel: UILabel!
    @IBOutlet weak var appImageView: UIImageView!
    @IBOutlet weak var appSizeLabel: UILabel!
    @IBOutlet weak var screenshotCollectionView: UICollectionView!
    @IBOutlet weak var appStoreButton: UIButton!
    
    var application: Application?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        appLabel.text = application?.appTitle ?? ""
        appSubLabel.text = application?.appSubTitle ?? ""
        appImageView.image = UIImage(named: application?.appImage ?? "")
        appImageView.layer.cornerRadius = 20
        appSizeLabel.text = "Size: \(application?.appSize ?? 0)MB"
        appStoreButton.layer.cornerRadius = 10
        }
    
    func configAppPage(application: Application){
        self.application = application
    }
    
    private func configureCollectionView(){
        screenshotCollectionView.dataSource = self
        screenshotCollectionView.delegate = self
        if let layout = screenshotCollectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        screenshotCollectionView.register(AppPageCollectionViewCell.nib(), forCellWithReuseIdentifier: AppPageCollectionViewCell.identifier)
    }
    
    @IBAction func pressedAppStoreButton(_ sender: UIButton) {
        if let url = URL(string: "itms-apps://itunes.apple.com/app/\(application?.linkID ?? "")") {
           UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
}

extension AppPageViewController: UICollectionViewDelegate,UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        application?.appScreenshots.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AppPageCollectionViewCell.identifier, for: indexPath) as? AppPageCollectionViewCell
        cell?.setupCell(imageName: application?.appScreenshots[indexPath.row] ?? "")
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 247, height: 554)
//        CGSize(width: 225, height: 495)
    }
}
