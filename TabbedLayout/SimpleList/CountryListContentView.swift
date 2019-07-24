//
//  CountryListContentView.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 12/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI

struct CountryListContentView : View {
    var body: some View {
        NavigationView {
            List {
                ForEach(JSONLoader.countries.identified(by: \.id)) { country in
                    NavigationLink(destination: CountryDetailsContentView(country: country)) {
                            CountryRow(country: country)
                        }
                }
            }.navigationBarTitle(Text("Countries"), displayMode: .large)
        }
    }
}

#if DEBUG


struct CountryListContentView_Previews : PreviewProvider {
    static var previews: some View {
        CountryListContentView()
    }
}
#endif
