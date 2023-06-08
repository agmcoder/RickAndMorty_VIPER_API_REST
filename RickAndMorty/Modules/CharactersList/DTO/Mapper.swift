//
//  Mapper.swift
//  RickAndMorty Dev
//
//  Created by agmcoder on 8/6/23.
//

import Foundation

struct Mapper {
    
    func map(entity: PopularCharacterEntity) -> PopularCharacterDTO {
        PopularCharacterDTO(name: entity.name,
                            status: entity.status,
                            image: entity.image)
    }
}
