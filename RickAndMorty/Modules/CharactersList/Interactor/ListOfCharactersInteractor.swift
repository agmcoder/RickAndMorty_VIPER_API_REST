//
//  ListOfCharactersInteractor.swift
//  RickAndMorty Dev
//
//  Created by agmcoder on 7/6/23.
//

import Foundation

class ListOfCharactersInteractor {
    
    func getListOfCharactersAsync() async -> CharactersResponseEntity {
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        let (data,_) = try! await  URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(CharactersResponseEntity.self, from: data)
    }
}
