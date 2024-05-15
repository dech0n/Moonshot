//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Dechon Ryan on 5/14/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // <T> means "some type", it's a placeholder for any type; could be anything (e.g. <Type>, <Something>, etc)
        
        /*
         Decode JSON data
         
         - Parameters:
            - file: String of the file's location within the project
         
         - Returns: Decoded JSON data
         */
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        do {
            return try decoder.decode(T.self, from: data)
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing key '\(key.stringValue)' - \(context.debugDescription)")
        } catch DecodingError.typeMismatch(_, let context) {
            fatalError("Failed to decode \(file) from bundle due to type mismatch - \(context.debugDescription)")
        } catch DecodingError.valueNotFound(let type, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing \(type) value - \(context.debugDescription)")
        } catch DecodingError.dataCorrupted(_) {
            fatalError("Failed to decode \(file) from bundle because it appears to be invalid JSON")
        } catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
     }
}
