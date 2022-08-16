//
//  UserViewController.swift
//  4 dz
//
//  Created by Максим Мигранов on 15.08.2022.
//

import UIKit

struct User {
    var login: String
    var password: String
    
    func getUser() -> User {
        User(login: "Login", password: "Password")
    }
}
