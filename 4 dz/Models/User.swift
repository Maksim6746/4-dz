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
             person: Person.getPerson()
                           
        )
    }
    
}

struct Person {
    var name: String
    var surname: String
    var patronymic: String
    var age: String
    var userPhone: String
    var userMail: String
    var additionalMail: String
    
    var fullName: String {
        "\(name) \(surname)"}
    
    static func getPerson() -> Person {
        Person(name: "Maxim", surname: "Migranov",
               patronymic: "Eduardovich",
               age: "23",
               userPhone: "12345",
               userMail: "max@mail.ru",
               additionalMail: "migranov@mail.ru"
        )
    }
}

