//
//  ProfileViewController.swift
//  module21_profile_sf
//
//  Created by Artem on 28.12.2020.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var navLeftBtn: UINavigationItem!
    
    var name = "John"
    var age = "20"
    var city = "NYC"
    var email = "test@test.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Профиль"
        navLeftBtn.backBarButtonItem?.title = "Настройки"
        nameLabel.text = name
        ageLabel.text = age
        cityLabel.text = city
        emailLabel.text = email
        
    }
    

}
