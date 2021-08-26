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
        fillWithGradient()
    }
    
    private func fillWithGradient() {
        
        let colorOne = UIColor(red: 205 / 225, green: 126 / 225, blue: 138 / 225, alpha: 1).cgColor
        let colorTwo = UIColor(red: 129 / 255, green: 158 / 225, blue: 224 / 255, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [colorOne, colorTwo]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
