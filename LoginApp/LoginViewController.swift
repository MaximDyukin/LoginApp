//
//  ViewController.swift
//  LoginApp
//
//  Created by Maxim Dukin on 24.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let username = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = usernameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logining() {
        if usernameTF.text == username && passwordTF.text == password {
        } else {
            showAlert(title: "Invalid login or password", message: "Please enter correct login and password") { _ in
                self.passwordTF.text = ""
            }
        }
    }
    
    @IBAction func promptingUsername() {
        showAlert(title: "Oops!", message: "Your username is \(username) 😉", handler: nil)
    }
    
    @IBAction func promptingPassword() {
        showAlert(title: "Oops!", message: "Your password is \(password) 😉", handler: nil)
    }
}
