//
//  CountryListView.swift
//  LooselyCoupledViews
//
//  Created by ramil on 04.08.2020.
//

import SwiftUI

struct CountryListView: View {
    
    let countries: [String]
    
    var body: some View {
        List(countries, id: \.self) { country in
            NavigationLink(destination: Text(country)) {
                HStack {
                    Text(country)
                    Spacer()
                }.contentShape(Rectangle())
            }
        }
    }
}
