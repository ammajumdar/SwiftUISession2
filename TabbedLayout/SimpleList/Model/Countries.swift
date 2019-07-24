//
//  Countries.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 12/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI
import UIKit

struct Country: Identifiable, Hashable, Codable {
    var id: Int
    
    var topLevelDomain, callingCodes, altSpellings, timezones, borders: [String]
    var name, alpha2Code, alpha3Code, capital, region, subregion, flag, demonym, nativeName: String
    var population: Int
}

