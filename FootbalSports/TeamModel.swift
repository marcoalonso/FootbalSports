//
//  TeamModel.swift
//  FootbalSports
//
//  Created by Marco Alonso on 13/11/24.
//

import Foundation


struct TeamsResponse: Codable {
    let response: [TeamResponse]
}

struct TeamResponse: Codable, Identifiable {
    var id: Int { team.id }  // Usamos el id del equipo como identificador único
    let team: Team
    let venue: Venue
}

struct Team: Codable {
    let id: Int
    let name: String
    let code: String?
    let country: String
    let founded: Int?
    let national: Bool
    let logo: String
}

struct Venue: Codable {
    let id: Int
    let name: String
    let address: String?
    let city: String?
    let capacity: Int?
    let surface: String?
    let image: String?
}

