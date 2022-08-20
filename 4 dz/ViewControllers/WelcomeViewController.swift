//
//  WelcomeViewController.swift
//  4 dz
//
//  Created by Максим Мигранов on 15.08.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
   
    //MARK: - Outlet
    @IBOutlet var nameUser: UILabel!
    
    //MARK: - Private Let and Var
    var user: User!
    
//MARK: - Override Func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameUser.text = "Welcome, \(user.login)!"
        
        view.addVerticalGradientLayer()
    }
}

