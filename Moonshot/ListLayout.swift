//
//  ListLayout.swift
//  Moonshot
//
//  Created by Dechon Ryan on 5/15/24.
//

import SwiftUI

struct ListLayout: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        List(missions) { mission in
            MissionTileView(mission: mission, astronauts: astronauts)
                .listRowBackground(Color.darkBackground)
        }
        .scrollContentBackground(.hidden)
        .listStyle(.plain)
    }
}


#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return ListLayout(missions: missions, astronauts: astronauts)
        .preferredColorScheme(.dark)
}
