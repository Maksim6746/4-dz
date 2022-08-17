//
//  Qestion.swift
//  4 dz
//
//  Created by Максим Мигранов on 17.08.2022.
//

import Foundation


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "1",
             password: "1",
             person: Person(name: "Max",
                            surname: "Migranov",
                            patronymic: "Eduardovich",
                            age: "23"
                           )
        )
    }
    
}

struct Person {
    var name: String
    var surname: String
    var patronymic: String
    var age: String
    var fullName: String {
        "\(name) \(surname)"
    }
}
