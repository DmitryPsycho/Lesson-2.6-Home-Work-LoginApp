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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? WelcomeViewController else { return }
        settingsVC.loginName = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func userNameTip() {
        showAlert(with: "Oops!", and: "Your name is User 😉")
    }
    @IBAction func passwordTip() {
        showAlert(with: "Oops!", and: "Your password is Password 😉")
    }
    
    @IBAction func loginButtonPressed() {
        guard loginTextField.text == "User", passwordTextField.text == "Password" else {
            passwordTextField.text = ""
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password!"
            )
            return
        }
    }
    @IBAction func unwindTextFields(for segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


