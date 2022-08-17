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
    private var user = User.getUser()
    
    private let primaryColor = UIColor(red: 210/255,
                                       green: 109/255,
                                       blue: 230/255,
                                       alpha: 1
    )
    private let secondaryColor = UIColor(red: 107/255,
                                         green: 148/255,
                                         blue: 230/255,
                                         alpha: 1
    )
    
//MARK: - Override Func
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: secondaryColor, bottomColor: primaryColor)
        nameUser.text = "Welcome, \(user.login)!"
    }
}
//MARK: - Extansion
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
        }
        
    }
