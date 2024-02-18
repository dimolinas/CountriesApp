//
//  Apollo.swift
//  CountriesApp
//
//  Created by Diegoe012 on 14/02/24.
//

import Foundation
import Apollo

class Network{
    
    static let shared = Network()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://countries.trevorblades.com/")!)
    
    private init(){
        
    }
}
