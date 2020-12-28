//
//  ViewController.swift
//  module21_profile_sf
//
//  Created by Artem on 28.12.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var button: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Настройки"
        button.layer.cornerRadius = 4
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
                view.addGestureRecognizer(tap)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? ProfileViewController {
                if segue.identifier == "valuesProfile" {
                    destination.name = nameTextField.text ?? "John"
                    destination.age = ageTextField.text ?? "20"
                    destination.city = cityTextField.text ?? "NYC"
                    destination.email = emailTextField.text ?? "test@test.com"
                    
                }
            }
        }

    @objc func dismissKeyboard() {
         view.endEditing(true)
       }
}

