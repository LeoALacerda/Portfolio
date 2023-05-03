//
//  ViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 27/04/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configTabBar()
    }
    
    func configItems(){
        guard let items = tabBar.items else {return}
        items[0].title = "Conceitos"
        items[1].title = "App 1"
        items[2].title = "App 2"
        items[3].title = "App 3"
    }
    func configTabBar(){
        tabBar.backgroundColor = .white
    }
}

