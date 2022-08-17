//
//  InfoUserViewController.swift
//  4 dz
//
//  Created by Максим Мигранов on 17.08.2022.
//

import UIKit

final class InfoUserViewController: UIViewController {
    @IBOutlet var nameUser: UITextField!
    @IBOutlet var surnameUser: UITextField!
    
    @IBOutlet var ageUser: UITextField!
    @IBOutlet var patronymicUser: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    var user = User.getUser()
    
    //MARK: - Override Func
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameUser?.text = user.person.name
        surnameUser?.text = user.person.surname
        patronymicUser?.text = user.person.patronymic
        ageUser?.text = user.person.age
        
        view.addVerticalGradientLayerr(topColor: secondaryColor,
                                       bottomColor: primaryColor)
    
        title = user.person.fullName
        
        
    }
    
    //MARK: - Private Let
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
    
}
//MARK: - Extansion
extension UIView {
    func addVerticalGradientLayerr(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
