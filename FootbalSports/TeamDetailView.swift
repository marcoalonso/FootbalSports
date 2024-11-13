//
//  TeamDetailView.swift
//  FootbalSports
//
//  Created by Marco Alonso on 13/11/24.
//

import SwiftUI
import Kingfisher

struct TeamDetailView: View {
    
    let teamResponse: TeamResponse
    
    var body: some View {
        ScrollView {
            VStack {
                // Información del equipo
                Text(teamResponse.team.name)
                    .font(.title)
                    .bold()
                
                // Imagen del logo del equipo
                KFImage(URL(string: teamResponse.team.logo))
                    .resizable()
                    .frame(width: 250, height: 150)

                if let code = teamResponse.team.code {
                    Text("Code: \(code)")
                        .font(.subheadline)
                }

                Text("Country: \(teamResponse.team.country)")
                    .font(.subheadline)

                if let founded = teamResponse.team.founded {
                    Text("Founded: \(founded)")
                        .font(.subheadline)
                }

                Text("National Team: \(teamResponse.team.national ? "Yes" : "No")")
                    .font(.subheadline)

                Divider()
                    .padding(.vertical)

                VStack {
                    // Información del estadio
                    Text("Stadium Information")
                        .font(.headline)
                        .padding(.bottom, 8)
                    
                    if let venueImage = teamResponse.venue.image {
                        KFImage(URL(string: venueImage))
                            .resizable()
                            .frame(width: .infinity, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(8)
                            .padding(.bottom, 8)
                    }

                    Text("Name: \(teamResponse.venue.name)")
                        .font(.subheadline)

                    if let address = teamResponse.venue.address {
                        Text("Address: \(address)")
                            .font(.subheadline)
                    }

                    if let city = teamResponse.venue.city {
                        Text("City: \(city)")
                            .font(.subheadline)
                    }

                    if let capacity = teamResponse.venue.capacity {
                        Text("Capacity: \(capacity)")
                            .font(.subheadline)
                    }

                    if let surface = teamResponse.venue.surface {
                        Text("Surface: \(surface)")
                            .font(.subheadline)
                    }
                }
            }
            
        }
    }
}

#Preview {
    TeamDetailView(teamResponse: MockData.teams[0])
}
