//
//  AboutViewController.swift
//  LoginScreen
//
//  Created by Дмитрий on 18.05.2023.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var favoriteLabel: UILabel!
    @IBOutlet var eatLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "My name is \(name)"
        ageLabel.text = "I'm \(age) years old."
        favoriteLabel.text = "My favorite coffee is \(favorit)"
        eatLabel.text = "I love \(eat)"

    }

}
