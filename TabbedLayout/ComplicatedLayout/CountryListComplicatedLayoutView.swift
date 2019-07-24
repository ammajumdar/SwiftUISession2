//
//  CountryListComplicatedLayoutView.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 12/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI

struct CountryListComplicatedLayoutView : View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HorizontalCountryRow()
                Divider()
                    .offset(x: 0, y: -100)
                Text("Details")
                    .font(.largeTitle)
                    .offset(x: 0, y: -100)
                    .padding(.leading, 8)
            }
            .navigationBarTitle(Text("Grid View"), displayMode: .large)
        }
    }
}

#if DEBUG
struct FoodListContentView_Previews : PreviewProvider {
    static var previews: some View {
        CountryListComplicatedLayoutView()
    }
}
#endif
