//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Maxim Dukin on 24.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome \(username ?? "")!"
    }
    
}
