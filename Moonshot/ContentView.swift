//
//  ContentView.swift
//  Moonshot
//
//  Created by Dechon Ryan on 5/14/24.
//

import SwiftUI

struct ContentView: View {
    // use type annotation to work with generic `decode` method
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showGrid = true
     
    var body: some View {
        NavigationStack {
            Group {
                if showGrid {
                    GridLayout(missions: missions, astronauts: astronauts)
                } else {
                    ListLayout(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Toggle("List  •  Grid", isOn: $showGrid)
                    .toggleStyle(.switch)
            }
        }
    }
}

#Preview {
    ContentView()
}
