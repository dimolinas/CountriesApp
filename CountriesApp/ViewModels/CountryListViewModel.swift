//
//  CountryListViewModel.swift
//  CountriesApp
//
//  Created by Diegoe012 on 17/02/24.
//

import Foundation
import Apollo
import SchemaGraphQL

class CountryListViewModel: ObservableObject{
    
    @Published var countries: [CountryViewModel] = []
    
    func getAllCountries(){
        Network.shared.apollo.fetch(query: GetAllCountriesQuery()){ result in
            switch result{
                case .success(let graphQLResult):
                if let countries = graphQLResult.data?.countries{
                    DispatchQueue.main.async{
                        self.countries = countries.map(CountryViewModel.init)
                    }
                }
                case .failure(let error):
                    print(error)
            }
        }
    }
}

struct CountryViewModel{
    
    fileprivate let country: GetAllCountriesQuery.Data.Country
    
    var code: String {
        country.code
    }
    
    var name: String{
        country.name
    }
    
    var emoji: String{
        country.emoji
    }
}

extension CountryViewModel{
    static var defaultCountry:CountryViewModel{
        return CountryViewModel(country: GetAllCountriesQuery.Data.Country()
    }
}
