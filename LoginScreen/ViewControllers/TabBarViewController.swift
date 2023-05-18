//
//  TabBarViewController.swift
//  LoginScreen
//
//  Created by Дмитрий on 18.05.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarApperance = UITabBarAppearance()
        tabBarApperance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarApperance
        tabBar.scrollEdgeAppearance = tabBarApperance
    }

}
