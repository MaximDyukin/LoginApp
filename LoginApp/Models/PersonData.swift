//
//  PersonData.swift
//  LoginApp
//
//  Created by Maxim Dukin on 30.08.2021.
//

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUsers() -> User {
        User(
            username: "User",
            password: "Password",
            person: Person(
                firstName: "Maxim",
                lastName: "Dyukin",
                age: "30",
                aboutMe: "I was born, grew up and live in the city of Kurgan. While I was at school, I attended various clubs. At first I was engaged in football, and then volleyball. In parallel, I studied at an art school. At the institute, I continued to play volleyball, and I was also often the host of events. At the moment, I work as a bartender."
            )
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let age: String
    let aboutMe: String
}
