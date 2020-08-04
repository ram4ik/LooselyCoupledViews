//
//  MainScreen.swift
//  LooselyCoupledViews
//
//  Created by ramil on 04.08.2020.
//

import SwiftUI

struct MainScreen: View {
    
    let countries = ["USA", "Pakistan", "Iceland", "England"]
    @State private var selectedCountry: String?
    
    var body: some View {
        NavigationView {
            VStack {
                CountryListView(countries: countries, onSelected: {
                    country in
                    self.selectedCountry = country
                })
                
                NavigationLink(destination: Text(self.selectedCountry ?? ""), isActive: .constant(self.selectedCountry != nil)) {
                    EmptyView()
                }
            }
            .onAppear {
                self.selectedCountry = nil
            }
            .navigationBarTitle("Countries")
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
