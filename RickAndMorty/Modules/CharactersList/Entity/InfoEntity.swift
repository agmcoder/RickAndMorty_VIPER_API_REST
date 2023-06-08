//
//  Info.swift
//  RickAndMorty Dev
//
//  Created by agmcoder on 6/6/23.
//

import Foundation

// MARK: - Info
struct InfoEntity: Codable {
    let count, pages: Int
    let next: String
    let prev: JSONNull?
}
