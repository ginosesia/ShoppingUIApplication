//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Gino Sesia on 06/07/2021.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //Step 1 - Locate Json File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        //Step 2 - create a property for data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        //Step 3 - create decoder
        let decoder = JSONDecoder()
        
        //Step 4 - Decode the data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from data")
        }
        
        //Step 5 - return decoded data
        return decodedData
        
    }
}
