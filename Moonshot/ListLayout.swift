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
        }
        .padding([.horizontal, .bottom])
    }
}
