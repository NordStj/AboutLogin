//
//  InfoViewController.swift
//  LoginScreen
//
//  Created by Дмитрий on 18.05.2023.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.numberOfLines = 0
        infoLabel.lineBreakMode = .byWordWrapping
        infoLabel.text = aboutMe
    }

}
