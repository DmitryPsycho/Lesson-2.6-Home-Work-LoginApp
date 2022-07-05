//
//  ViewController.swift
//  Lesson 2.6 Home Work LoginApp
//
//  Created by Psycho on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? WelcomeViewController else { return }
        settingsVC.loginName = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func userNameTip() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
    }
    @IBAction func passwordTip() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
    }
    
    @IBAction func loginButtonPressed() {
        guard loginTextField.text == user, passwordTextField.text == password else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password!"
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func unwindTextFields(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            _ in self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


