//
//  LoginViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.isEnabled = false
        emailField.addTarget(self, action: #selector(self.validateField), for: .editingChanged)
        passwordField.addTarget(self, action: #selector(self.validateField), for: .editingChanged)
    }
    
    @objc private func validateField() {
        loginButton.isEnabled = emailField.text != "" && passwordField.text != ""
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton) {
        NetworkService.shared.login(email: emailField.text!, password: passwordField.text!) { success in
            if success {
                self.goToHomePage()
            } else {
                print("Invalid credentials")
            }
            
        }
    }
    
    private func goToHomePage() {
        let controller = storyboard? .instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        present(controller, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
