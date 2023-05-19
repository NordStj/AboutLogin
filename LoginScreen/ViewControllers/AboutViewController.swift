//
//  AboutViewController.swift
//  LoginScreen
//
//  Created by Дмитрий on 18.05.2023.
//

import UIKit

class AboutViewController: UIViewController {
    
    var user: Information!

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var favoriteLabel: UILabel!
    @IBOutlet var eatLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "My name is \(user.name)"
        ageLabel.text = "I'm \(user.age) years old."
        favoriteLabel.text = "My favorite coffee is \(user.favorite)"
        eatLabel.text = "I love \(user.eat)"

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.user = user
    }

}
