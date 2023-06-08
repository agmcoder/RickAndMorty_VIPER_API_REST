//
//  CharacterResponse.swift
//  RickAndMorty Dev
//
//  Created by agmcoder on 6/6/23.
//

import Foundation

struct CharactersResponseEntity: Decodable {
    let info: InfoEntity
    let characters: [PopularCharacterEntity]
    
    enum CodingKeys: String, CodingKey {
        case info
        case characters = "results"
    }
}
