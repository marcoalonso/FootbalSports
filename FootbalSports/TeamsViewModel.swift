//
//  TeamsViewModel.swift
//  FootbalSports
//
//  Created by Marco Alonso on 13/11/24.
//

import Foundation
import Combine

class TeamsViewModel: ObservableObject {
 
    @Published var teams: [TeamResponse] = []
    @Published var errorMessage: String = ""
    @Published var showErrorAlert = false
    
    private var cancellables = Set<AnyCancellable>()
    private let footballAPIService = FootballAPIService()
    
    init() {
        fetchTeams(leagueID: 39, season: 2020) // Liga y temporada como ejemplo
    }
    
    func fetchTeams(leagueID: Int, season: Int) {
        footballAPIService.fetchTeams(leagueID: leagueID, season: season)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    self.errorMessage = error.localizedDescription
                    self.showErrorAlert = true
                }
            }, receiveValue: { teams in
                self.teams = teams
            })
            .store(in: &cancellables)
    }
    
}
