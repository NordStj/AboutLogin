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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.text = user
        passwordTF.text = password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func usedLogInButton() {
        guard loginTF.text == user, passwordTF.text == password else {
            showAlert(addMessage: "Please, enter correct login and password")
            passwordTF.text = ""
            return
        }
        performSegue(withIdentifier: "welcome", sender: nil)
    }
    
    @IBAction func showUserName() {
        showAlert(addMessage: "Your User Name is 'User' 😉 ")
    }
    
    @IBAction func showPassword() {
        showAlert(addMessage: "Your Password is '1234' 🤫 ")
    }

    private func showAlert(addMessage message: String) {
        let alert = UIAlertController(title: "Oops!", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

