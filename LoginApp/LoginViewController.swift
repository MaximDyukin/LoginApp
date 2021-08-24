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
    
    private let username = "Name"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = usernameTF.text
    }
    
    @IBAction func promptingUsername() {
        showAlert(with: "Oops!", and: "Your username is \(username) 😉")
    }
    
    @IBAction func promptingPassword() {
        showAlert(with: "Oops!", and: "Your password is \(password) 😉")
    }
}
