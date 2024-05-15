//
//  ContentView.swift
//  Moonshot
//
//  Created by Dechon Ryan on 5/14/24.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
