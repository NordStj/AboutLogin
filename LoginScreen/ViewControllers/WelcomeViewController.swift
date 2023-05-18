//
//  WelcomeViewController.swift
//  LoginScreen
//
//  Created by Дмитрий on 16.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)"
    }
}
