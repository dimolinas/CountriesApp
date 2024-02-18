//
//  CountryDetailView.swift
//  CountriesApp
//
//  Created by Diegoe012 on 17/02/24.
//

import SwiftUI
import SchemaGraphQL

struct CountryDetailView: View {
    
    let country: CountryViewModel
    @StateObject private var countryDetailViewModel = CountryDetailViewModel()
    
    var body: some View {
        VStack{
            Text(countryDetailViewModel.name)
            Text(countryDetailViewModel.capital)
            List(countryDetailViewModel.states, id: \.name){ state in
                Text(state.name)
            }
        }.onAppear(perform: {
            countryDetailViewModel.getCountryDetailsByCode(code: country.code)
        })
    }
}


