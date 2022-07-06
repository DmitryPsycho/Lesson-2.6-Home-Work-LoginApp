//
//  LoginData.swift
//  Lesson 2.6 Home Work LoginApp
//
//  Created by Psycho on 05.07.2022.
//

import Foundation

struct User {
    let userName: String
    let userPassword: String
    let personInfo: Info
    
    static func getUser() -> User {
        User (userName: "User", userPassword: "Password", personInfo: Info.getInfo())
    }
}
