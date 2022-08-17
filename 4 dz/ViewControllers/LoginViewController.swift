//
//  LoginViewController.swift
//  4 dz
//
//  Created by Максим Мигранов on 15.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    private let user = User.getUser()
    
// MARK: - Outlets
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginTextField: UITextField!
    
    
//MARK: - Override Func
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
//MARK: - Actions Func
    @IBAction func loginPressed() {
        guard loginTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(title: "Invavid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotLoginAndPassword(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.login)!")
        : showAlert(title: "Oops!", message: "Your password is \(user.password)!")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
   
//MARK: - Private Func
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
