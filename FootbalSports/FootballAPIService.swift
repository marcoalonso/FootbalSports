//
//  FootballAPIService.swift
//  FootbalSports
//
//  Created by Marco Alonso on 13/11/24.
/// Documentacion de la API
// https://www.api-football.com/documentation-v3

import Foundation
import Combine

class FootballAPIService {
    
    private let baseURL = "https://v3.football.api-sports.io"
    private let apiKey = "5b37cd3fe7b70b8ce932a9dc6cf1bddf"
    
    func fetchTeams(leagueID: Int, season: Int) -> AnyPublisher<[TeamResponse], Error> {
        guard let url = URL(string: "\(baseURL)/teams?league=\(leagueID)&season=\(season)") else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        var request = URLRequest(url: url)
        request.setValue(apiKey, forHTTPHeaderField: "x-apisports-key")
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: TeamsResponse.self, decoder: JSONDecoder())
            .map { $0.response }
            .eraseToAnyPublisher()
    }
}
