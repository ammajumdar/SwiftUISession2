//
//  CircularImageView.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 12/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI

struct CircularImageView : View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 75, height: 75)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10.0)
    }
}

#if DEBUG
struct CircularImageView_Previews : PreviewProvider {
    static var previews: some View {
        CircularImageView(imageName: "in")
    }
}
#endif
