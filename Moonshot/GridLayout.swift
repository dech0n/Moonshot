//
//  GridLayout.swift
//  Moonshot
//
//  Created by Dechon Ryan on 5/15/24.
//

import SwiftUI

struct GridLayout: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    MissionTileView(mission: mission, astronauts: astronauts)
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

