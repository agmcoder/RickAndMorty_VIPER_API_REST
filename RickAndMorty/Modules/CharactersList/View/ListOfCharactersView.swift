//
//  ListOfCharactersView.swift
//  RickAndMorty Dev
//
//  Created by agmcoder on 7/6/23.
//

import Foundation
import UIKit

class ListOfCharactersView: UIViewController {
    private var characterTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.estimatedRowHeight = 120
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(CharacterCellView.self, forCellReuseIdentifier: "CharacterCellView")
        return tableView
    }()
    
    var presenter: ListOfCharacterPresenter?
    
     init() {
         super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        setupTableView()

        presenter?.onViewAppear()
    }
    
    private func setupTableView() {
        view.addSubview(characterTableView)
        
        NSLayoutConstraint.activate([
            characterTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            characterTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            characterTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            characterTableView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        
        characterTableView.dataSource = self
    }
    
}

extension ListOfCharactersView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter!.charactersDTO.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCellView", for: indexPath) as! CharacterCellView
        //cell.backgroundColor = .red
        let characterDTO = presenter!.charactersDTO[indexPath.row]
        
        cell.configure(model: characterDTO)
        
        return cell
    }
    
    
    
    
    
}

extension ListOfCharactersView: ListOfCharactersUIProtocol {
    func update(response characters: [PopularCharacterDTO]) {
        print("data received:  \(characters)")
        DispatchQueue.main.async {
            self.characterTableView.reloadData()
        }
    }
   
}
