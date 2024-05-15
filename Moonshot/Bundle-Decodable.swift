//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Dechon Ryan on 5/14/24.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: Astronaut] {
        /* 
         Decode JSON data
         
         - Parameters:
            - file: String of the file's location within the project
         
         - Returns: Dictionary of Astronaut data [String: Astronaut]
         */
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([String: Astronaut].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
     }
}
