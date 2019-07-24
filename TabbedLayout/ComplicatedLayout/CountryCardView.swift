//
//  CountryCardView.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 16/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI

struct CountryCardView : View {
    var country: Country
    var body: some View {
        VStack(alignment: .center) {
            Image(country.alpha2Code.lowercased())
                .renderingMode(.original)
                .resizable()
                .frame(width: 150, height: 150)
                .scaledToFill()
                .cornerRadius(8.0)
            Text(country.name)
                .color(.black)
                .lineLimit(nil)
                .font(.body)
                .padding(.leading, 5)
                .padding(.trailing, 5)
        }.padding(.leading, 4)
    }
}

#if DEBUG
struct CountryCardView_Previews : PreviewProvider {
    static var previews: some View {
        CountryCardView(country: JSONLoader.countries[0])
    }
}
#endif
