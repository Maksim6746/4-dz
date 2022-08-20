//
//  AdditionaiViewController.swift
//  4 dz
//
//  Created by Максим Мигранов on 20.08.2022.
//

import UIKit

class InfoAdditionalViewController: UIViewController {
    
    var user: User!
    
    //MARK: - IBOutlet
    
    @IBOutlet var phoneUser: UITextField!
    @IBOutlet var mailUser: UITextField!
    @IBOutlet var mailAdditional: UITextField!
    
    
    
    //MARK: - Override Func
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        
        phoneUser.text = user.person.userPhone
        mailUser.text = user.person.userMail
        mailAdditional.text = user.person.additionalMail
        
    }
    
}
