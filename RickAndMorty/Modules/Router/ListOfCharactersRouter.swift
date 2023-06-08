//
//  ListOfCharactersRouter.swift
//  RickAndMorty Dev
//
//  Created by agmcoder on 7/6/23.
//

import Foundation
import UIKit

class ListOfCharactersRouter {
    
    func showListOfCharacters(window: UIWindow?) {
        let view = ListOfCharactersView()
        let interactor = ListOfCharactersInteractor()
        let presenter = ListOfCharacterPresenter(listOfCharactersInteractor: interactor)
        
        presenter.ui = view
        view.presenter = presenter
        
        window?.rootViewController = view
        window?.makeKeyAndVisible()
    }
}
