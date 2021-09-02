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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(user.person.firstName) \(user.person.lastName)"
        firstNameLabel.text = "First name: \(user.person.firstName)"
        lastNameLabel.text = "Last name: \(user.person.lastName)"
        ageLabel.text = "Age: \(user.person.age)"
        aboutMeLabel.text = "About me: \(user.person.aboutMe)"
    }
}
