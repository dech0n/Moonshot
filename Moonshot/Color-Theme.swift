//
//  Color-Theme.swift
//  Moonshot
//
//  Created by Dechon Ryan on 5/14/24.
//

import SwiftUI

// writing the extension this way (vs on Color directly) 
// allows us to use these colors anywhere SwiftUI
// would expect a ShapeStyle to be used
extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}
