//
//  InfoViewController.swift
//  LoginScreen
//
//  Created by Дмитрий on 18.05.2023.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    var user: Information!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoLabel.lineBreakMode = .byWordWrapping
        infoLabel.text = user.about
        
    }
    


}
