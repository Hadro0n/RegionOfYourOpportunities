//
//  Contacts.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 01.02.2025.
//

struct Contacts {
    let adress: String
    let phone: String
    let email: String
    let pressEmail: String
    let workingHours: String
    
    static func getContacts() -> Contacts {
        Contacts(
            adress: "г. Саранск, ул. Большевистская, 33",
            phone: "+7 (8342) 34-30-00",
            email: "mrmc@e-mordovia.ru",
            pressEmail: "press.mrmc@e-mordovia.ru",
            workingHours: "Пн - Пт, с 9.00 до 18.00"
        )
    }
}
