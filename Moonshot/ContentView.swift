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
    
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
