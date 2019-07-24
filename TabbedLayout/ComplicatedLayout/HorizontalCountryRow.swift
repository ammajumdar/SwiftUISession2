//
//  HorizontalCountryRow.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 16/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI

struct HorizontalCountryRow : View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                    ForEach(JSONLoader.countries.identified(by: \.id)) { country in
                        NavigationLink(destination: CountryCardView(country: country)) {
                            CountryCardView(country: country)
                        }
                    }
            }
        }.padding(EdgeInsets(top: -100, leading: 5, bottom: 0, trailing: 5))
         .frame(width: UIScreen.main.bounds.width, height: 100)
    }
}
    
    #if DEBUG
    struct HorizontalCountryRow_Previews : PreviewProvider {
        static var previews: some View {
            HorizontalCountryRow()
        }
    }
#endif
