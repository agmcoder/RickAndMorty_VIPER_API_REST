//
//  ListOfCharactersPresenter.swift
//  RickAndMorty Dev
//
//  Created by agmcoder on 7/6/23.
//

import Foundation

protocol ListOfCharactersUIProtocol: AnyObject {
    func update(response: [PopularCharacterDTO])
}

class ListOfCharacterPresenter {
    var ui: ListOfCharactersUIProtocol?
    
    private let listOfCharactersInteractor : ListOfCharactersInteractor
    var charactersDTO: [PopularCharacterDTO] = []
    private let mapper: Mapper
    
    init(listOfCharactersInteractor: ListOfCharactersInteractor,mapper: Mapper = Mapper()) {
        self.listOfCharactersInteractor = listOfCharactersInteractor
        self.mapper = mapper
    }
    
    func onViewAppear() {
        Task{
            let models = await listOfCharactersInteractor.getListOfCharactersAsync().characters
            charactersDTO = models.map(mapper.map(entity:))
            
            ui?.update(response: charactersDTO)
        }
    }
    
}
