//
//  MainScreen.swift
//  LooselyCoupledViews
//
//  Created by ramil on 04.08.2020.
//

import SwiftUI

struct MainScreen: View {
    
    let countries = ["USA", "Pakistan", "Iceland", "England"]
    
    var body: some View {
        NavigationView {
            CountryListView(countries: countries)
                .navigationBarTitle("Countries")
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
