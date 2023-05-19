//
//  ViewController.swift
//  LoginScreen
//
//  Created by Дмитрий on 16.05.2023.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let login = User.getUser()
    private let person = Information.getInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.text = login.user
        passwordTF.text = login.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let tabBarVC = tabBarController.viewControllers else { return }
        
        tabBarVC.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = person
            } else if let navigationCtr = $0 as? UINavigationController {
                let aboutVC = navigationCtr.topViewController
                guard let aboutVC = aboutVC as? AboutViewController else { return }
                aboutVC.user = person
            }
        }
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func usedLogInButton() {
        guard loginTF.text == login.user, passwordTF.text == login.password else {
            showAlert(addMessage: "Please, enter correct login and password")
            passwordTF.text = ""
            return
        }
        performSegue(withIdentifier: "welcome", sender: nil)
    }
    
    @IBAction func showUserName() {
        showAlert(addMessage: "Your User Name is \(login.user) 😉 ")
    }
    
    @IBAction func showPassword() {
        showAlert(addMessage: "Your Password is \(login.password) 🤫 ")
    }

    private func showAlert(addMessage message: String) {
        let alert = UIAlertController(title: "Oops!", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

