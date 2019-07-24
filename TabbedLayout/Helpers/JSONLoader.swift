//
//  JSONLoader.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 12/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import UIKit
import SwiftUI

class JSONLoader {
    
    static let countries: [Country] = JSONLoader.load("Countries")
    
    /// This method loads JSON Data from a file present in local Bundle
    /// - Parameter fileName: FileName of The JSON File (eg: pass it like "Example.json"
    /// - Parameter Type: Generics
    ///
    static func load<T: Decodable>(_ fileName: String, as type: T.Type = T.self) -> T {
        let fileName = fileName.contains("json") ? fileName : fileName + ".json"
        let data: Data
        guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            fatalError("Couldn't find \(fileName) in main bundle.")
        }
        do {
            data = try Data(contentsOf: fileURL)
        } catch {
            fatalError("Couldn't load \(fileName) from main bundle. Failed with error: \(error.localizedDescription)")
        }
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
        }
    }
}
