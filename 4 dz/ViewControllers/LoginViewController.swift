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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarControllers = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarControllers.viewControllers else { return }
        
        viewControllers.forEach { viewControllers in
            if let welcomeVC = viewControllers as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewControllers as? UINavigationController {
                guard let userInfoVC = navigationVC.topViewController as? InfoUserViewController
                else { return }
                userInfoVC.user = user
            }
        }
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
