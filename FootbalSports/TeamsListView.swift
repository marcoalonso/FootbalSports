//
//  TeamsListView.swift
//  FootbalSports
//
//  Created by Marco Alonso on 13/11/24.
//

import SwiftUI
import Kingfisher

struct TeamsListView: View {
    @StateObject private var viewModel = TeamsViewModel()
    
    // Definimos una grilla con tres columnas
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.teams) { teamResponse in
                        NavigationLink(destination: TeamDetailView(teamResponse: teamResponse)) {
                            VStack {
                                KFImage(URL(string: teamResponse.team.logo))
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                                
                                
                                Text(teamResponse.team.name)
                                    .font(.subheadline)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(2)
                                    .frame(maxWidth: 100)
                            }
                            .padding()
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Premier League")
            .navigationBarTitleDisplayMode(.inline)
            .alert(isPresented: $viewModel.showErrorAlert) {
                Alert(title: Text("Error"), message: Text(viewModel.errorMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    TeamsListView()
}
