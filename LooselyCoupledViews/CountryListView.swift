//
//  CountryListView.swift
//  LooselyCoupledViews
//
//  Created by ramil on 04.08.2020.
//

import SwiftUI

struct CountryListView: View {
    
    let countries: [String]
    var onSelected: (String) -> Void = { _ in }
    
    var body: some View {
        List(countries, id: \.self) { country in
            HStack {
                Text(country)
                Spacer()
                Image(systemName: "greaterthan")
                    .opacity(0.5)
            }.contentShape(Rectangle())
            .onTapGesture {
                self.onSelected(country)
            }
        }
    }
}
