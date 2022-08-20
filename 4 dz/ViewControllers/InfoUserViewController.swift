//
//  InfoUserViewController.swift
//  4 dz
//
//  Created by Максим Мигранов on 17.08.2022.
//

import UIKit

final class InfoUserViewController: UIViewController {
   
    var user: User!
    
    //MARK: -IBOutlet
    @IBOutlet var nameUser: UITextField!
    @IBOutlet var surnameUser: UITextField!
    
    @IBOutlet var ageUser: UITextField!
    @IBOutlet var patronymicUser: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    
    
    //MARK: - Override Func
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoAdditionalVC = segue.destination as? InfoAdditionalViewController
        else { return }
        infoAdditionalVC.user = user
        guard let zodiacVC = segue.destination as? ZodiacSignViewController
        else { return }
        zodiacVC.user = user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer()
        
        nameUser?.text = user.person.name
        surnameUser?.text = user.person.surname
        patronymicUser?.text = user.person.patronymic
        ageUser?.text = user.person.age
    
        title = user.person.fullName
    }
}
