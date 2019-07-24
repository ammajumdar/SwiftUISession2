//
//  CountryRow.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 12/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI

struct CountryRow : View {
    var country: Country
    var body: some View {
            HStack {
                CircularImageView(imageName: country.alpha2Code.lowercased())
                VStack(alignment: .leading, spacing: 5) {
                    Text(country.name)
                        .font(.headline)
                        .lineLimit(nil)
                    Text(country.capital)
                        .font(.subheadline)
                        .color(.gray)
                }.padding(.leading, 8)
                 .padding(.trailing, 8)
            }.padding(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
    }
}

#if DEBUG
struct CountryRow_Previews : PreviewProvider {
    static var previews: some View {
        CountryRow(country: JSONLoader.countries[0])
    }
}
#endif
