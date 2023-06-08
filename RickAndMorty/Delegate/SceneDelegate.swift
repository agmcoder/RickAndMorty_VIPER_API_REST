//
//  SceneDelegate.swift
//  RickAndMorty
//
//  Created by agmcoder on 6/6/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var listOfCharactersRouter = ListOfCharactersRouter()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        listOfCharactersRouter.showListOfCharacters(window: window)
    }
    
}

