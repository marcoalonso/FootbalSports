//
//  MockData.swift
//  FootbalSports
//
//  Created by Marco Alonso on 13/11/24.
//

import Foundation
class MockData {
    static let teams: [TeamResponse] = [
        TeamResponse(
            team: Team(
                id: 1,
                name: "FC Barcelona",
                code: "BAR",
                country: "Spain",
                founded: 1899,
                national: false,
                logo: "https://1000marcas.net/wp-content/uploads/2020/03/Logo-Barcelona-500x313.png"
            ),
            venue: Venue(
                id: 101,
                name: "Camp Nou",
                address: "Carrer d'Arístides Maillol",
                city: "Barcelona",
                capacity: 99354,
                surface: "grass",
                image: "https://www.infobae.com/new-resizer/tiovapzO3Bv1fBp1ZvD5JKPim2k=/arc-anglerfish-arc2-prod-infobae/public/RBLJL7X55NAETONLUUDRZFURWM.jpeg"
            )
        ),
        TeamResponse(
            team: Team(
                id: 2,
                name: "Real Madrid",
                code: "RMA",
                country: "Spain",
                founded: 1902,
                national: false,
                logo: "https://1000marcas.net/wp-content/uploads/2020/01/logo-Real-Madrid.png"
            ),
            venue: Venue(
                id: 102,
                name: "Santiago Bernabéu",
                address: "Av. de Concha Espina",
                city: "Madrid",
                capacity: 81044,
                surface: "grass",
                image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Estadio_Santiago_Bernabeu_2013-05-05.jpg/1200px-Estadio_Santiago_Bernabeu_2013-05-05.jpg"
            )
        ),
        TeamResponse(
            team: Team(
                id: 3,
                name: "Manchester United",
                code: "MAN",
                country: "England",
                founded: 1878,
                national: false,
                logo: "https://i.pinimg.com/736x/8e/f5/9d/8ef59dc3c90a3abd56c87a5901709132.jpg"
            ),
            venue: Venue(
                id: 103,
                name: "Old Trafford",
                address: "Sir Matt Busby Way",
                city: "Manchester",
                capacity: 74879,
                surface: "grass",
                image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Old_Trafford_inside_20060726_1.jpg/1200px-Old_Trafford_inside_20060726_1.jpg"
            )
        )
    ]
}
