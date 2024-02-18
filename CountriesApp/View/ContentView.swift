//
//  ContentView.swift
//  CountriesApp
//
//  Created by Diegoe012 on 14/02/24.
//

import SwiftUI
import SchemaGraphQL

struct ContentView: View {
    
    @StateObject private var countryListViewModel = CountryListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(countryListViewModel.countries, id: \.code){ country in
                    NavigationLink(
                        destination: CountryDetailView(country: country),
                        label: {
                            HStack{
                                Text(country.emoji)
                                Text(country.name)
                            }
                        }
                    )
                }.listStyle(PlainListStyle())
            }
            .onAppear(perform: {
                countryListViewModel.getAllCountries()
            }).navigationTitle("Countries")
        }
    }
}

#Preview {
    ContentView()
}
