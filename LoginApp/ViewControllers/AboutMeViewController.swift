//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Maxim Dukin on 30.08.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    var firstName = ""
    var lastName = ""
    var age = ""
    var aboutMe = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameLabel.text = "First name: \(firstName)"
        lastNameLabel.text = "Last name: \(lastName)"
        ageLabel.text = "Age: \(age)"
        aboutMeLabel.text = "About me: \(aboutMe)"
    }
}
