//
//  Protocols.swift
//  RickAndMorty Dev
//
//  Created by agmcoder on 7/6/23.
//

import Foundation

protocol CharactersViewProtocol: AnyObject {
    func showCharacters(_ characters: [Character])
    func showError(_ error: Error)
}

protocol CharactersPresenterProtocol: AnyObject {
    func viewDidLoad()
    func didSelectCharacter(_ character: Character)
}
