//
//  TabbedContentView.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 12/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI

struct TabbedContentView : View {
    var body: some View {
        TabbedView {
            CountryListContentView().tabItem {
                Image(systemName: "circle")
                Text("Countries")
            }.tag(0)
            CountryListComplicatedLayoutView().tabItem {
                Image(systemName: "circle")
                Text("Food Item")
            }.tag(1)
        }
    }
}

#if DEBUG
struct TabbedContentView_Previews : PreviewProvider {
    static var previews: some View {
        TabbedContentView()
    }
}
#endif
