//
//  CountryDetailsContentView.swift
//  TabbedLayout
//
//  Created by Majumdar, Amit (US - Bengaluru) on 15/07/19.
//  Copyright © 2019 Majumdar, Amit (US - Bengaluru). All rights reserved.
//

import SwiftUI

struct CountryDetailsContentView : View {
  
    let country: Country
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Image(country.alpha2Code.lowercased())
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width - 30, height: 300)
                        .clipped()
                        .padding(.top, 15)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .offset(y: -90)
                    Text("country: ".capitalized + country.name)
                        .lineLimit(nil)
                        .font(.title)
                        .padding(.leading, 15)
                        .foregroundColor(.black)
                        .offset(y: -90)
                    Text("capital: ".capitalized + country.capital)
                        .font(.callout)
                        .padding(.top, 2)
                        .padding(.leading, 15)
                        .foregroundColor(.gray)
                        .offset(y: -90)
                    Text("native name: ".capitalized + country.nativeName)
                        .font(.callout)
                        .padding(.top, 2)
                        .padding(.leading, 15)
                        .foregroundColor(.gray)
                        .offset(y: -90)
                    Divider()
                        .offset(y: -90)
                    Text("population: ".capitalized + "\(country.population)")
                        .padding(.leading, 15)
                        .offset(y: -80)
                        .foregroundColor(.gray)
                }
            }
        }.navigationBarTitle(Text(country.name), displayMode: .inline)
    }
}

#if DEBUG
struct CountryDetailsContentView_Previews : PreviewProvider {
    static var previews: some View {
        CountryDetailsContentView(country: JSONLoader.countries[0])
    }
}
#endif
