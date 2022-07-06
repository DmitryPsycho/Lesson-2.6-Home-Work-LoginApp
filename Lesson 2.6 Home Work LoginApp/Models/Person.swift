//
//  Person.swift
//  Lesson 2.6 Home Work LoginApp
//
//  Created by Psycho on 06.07.2022.
//

import Foundation

struct Info {
    let title: String
    let info: String
    let job: String
    let hobbies: String
    
    
    static func getInfo() -> Info {
        Info(
            title: "О себе:",
            info: "Меня зовут Дмитрий, мне 29 лет и проживаю я в данный момент в городе Ростов - на - Дону.",
            job: "Я предпринематель и занимаюсь производством промышленного оборудования для линий розлива, а так же производством различных пеномоющих средств.",
            hobbies: "Основные мои увлечения это автомобили, гитара и рыбалка 🦾. В прошлом увлекался различными игрушками, типа World of Warcraft (где убил тысячи часов 😂) и Overwatch"
        )
    }
}
