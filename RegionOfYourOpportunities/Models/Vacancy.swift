//
//  Vacancy.swift
//  RegionOfYourOpportunities
//
//  Created by Владислав Якунин on 01.02.2025.
//

struct Vacancy {
    let organization: String
    let title: String
    let location: String
    let cash: String
    
    static func getListVacancy() -> [Vacancy] {
        [
            Vacancy(
                organization: "Мордовский республиканский молодежный центр",
                title: "Водитель",
                location: "г. Саранск",
                cash: "от 30 000 рублей"
            ),
            Vacancy(
                organization: "Мордовский республиканский молодежный центр",
                title: "Администратор молодежных пространств",
                location: "г. Саранск",
                cash: "от 20 000 рублей"
            ),
            Vacancy(
                organization: "Мордовский республиканский молодежный центр",
                title: "Специалист по работе с молодежью",
                location: "Большеберезниковский район",
                cash: "от 20 000 рублей"
            ),
            Vacancy(
                organization: "Мордовский республиканский молодежный центр",
                title: "Специалист по работе с молодежью",
                location: "Кочкуровский район",
                cash: "от 20 000 рублей"
            ),
            Vacancy(
                organization: "Мордовский республиканский молодежный центр",
                title: "Специалист по работе с молодежью",
                location: "Атяшевский район",
                cash: "от 20 000 рублей"
            ),
            Vacancy(
                organization: "Мордовский республиканский молодежный центр",
                title: "Специалист по работе с молодежью",
                location: "Инсарский район",
                cash: "от 20 000 рублей"
            ),
            Vacancy(
                organization: "Мордовский республиканский молодежный центр",
                title: "Начальник отдела семейных ценностей",
                location: "г. Саранск",
                cash: "от 35 000 рублей"
            ),
            Vacancy(
                organization: "Мордовский республиканский молодежный центр",
                title: "Специалист по работе с молодежью центра карьеры",
                location: "г. Саранск",
                cash: "от 20 000 рублей"
            ),
            Vacancy(
                organization: "Мордовский республиканский молодежный центр",
                title: "Специалист по работе с молодежью отдела по связям с общественностью",
                location: "г. Саранск",
                cash: "от 20 000 рублей"
            )
        ]
    }
}
