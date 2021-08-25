//
//  ShowAlert.swift
//  LoginApp
//
//  Created by Maxim Dukin on 24.08.2021.
//

import UIKit

extension LoginViewController {
    
    func showAlert(title: String, message: String, handler: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: handler)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
