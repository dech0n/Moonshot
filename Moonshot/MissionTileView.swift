//
//  MissionTileView.swift
//  Moonshot
//
//  Created by Dechon Ryan on 5/15/24.
//

import SwiftUI

struct MissionTileView: View {
    let mission: Mission
    let astronauts: [String: Astronaut]
    
    var body: some View {
        NavigationLink {
            MissionView(mission: mission, astronauts: astronauts)
        } label: {
            VStack {
                Image(mission.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding()
                
                VStack {
                    Text(mission.displayName)
                        .font(.headline)
                        .foregroundStyle(.white)
                    
                    Text(mission.formattedLaunchDate)
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .background(.lightBackground)
            }
            .clipShape(.rect(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.lightBackground)
            )
        }
    }
}

