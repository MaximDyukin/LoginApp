//
//  ViewController.swift
//  LoginApp
//
//  Created by Maxim Dukin on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let username = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = usernameTF.text ?? ""
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logining() {
        if usernameTF.text != username || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your username is \(username) 😉")
            : showAlert(title: "Oops!", message: "Your password is \(password) 😉")
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if usernameTF.isFirstResponder {
            passwordTF.becomeFirstResponder()
        } else {
            logining()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
