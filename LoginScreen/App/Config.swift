//
//  Config.swift
//  LoginScreen
//
//  Created by Дмитрий on 18.05.2023.
//

struct User {
    let user: String
    let password: String
    
    static func getUser() -> User {
        User(
        user: "User",
        password: "1234"
        )
    }
}

struct Information {
    let name: String
    let age: Int
    let favorite: Favorite
    let eat: Eat
    let about: String
    
    static func getInfo() -> Information {
        Information(
            name: "Dmitry",
            age: 27,
            favorite: .latte,
            eat: .pizza,
            about: "Привет, меня зовут Дима. Хочу стать, клевым программистом на ios, стараюсь заниматься каждый день, если раньше каждый день присылал домашки, то теперь делаю через день, потому что объем стал больше, но интереснее. Всегда круто видеть результат своих трудов, дальше больше. :)"
        )
    }
}

enum Favorite: String {
    case latte = "Latte"
    case capuchino = "Capuchino"
    
}

enum Eat: String {
    case pizza = "Pizza"
    case sushi = "Sushi"
}
