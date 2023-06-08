//
//  CharacterCellView.swift
//  RickAndMorty Dev
//
//  Created by agmcoder on 8/6/23.
//

import Foundation
import UIKit
import Kingfisher

class CharacterCellView: UITableViewCell {
    let characterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let characterName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = .systemFont(
            ofSize: 32,
            weight: .bold,
            width: .condensed
        )
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let characterStatus: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(
            ofSize: 12,
            weight: .regular,
            width: .standard
        )
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(characterImageView)
        addSubview(characterName)
        addSubview(characterStatus)
        
        NSLayoutConstraint.activate([
            characterImageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 12),
            characterImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            characterImageView.heightAnchor.constraint(equalToConstant: 100),
            characterImageView.widthAnchor.constraint(equalToConstant: 100),
            //characterImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            characterImageView.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: -12),
            
            characterName.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 18),
            characterName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            characterName.topAnchor.constraint(equalTo: characterImageView.topAnchor, constant: 24),
            
            characterStatus.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 20),
            characterStatus.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            characterStatus.topAnchor.constraint(equalTo: characterName.bottomAnchor, constant: 8),
            characterStatus.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor, constant: 8)
            
            
        ])
    }
    
    func configure(model: PopularCharacterDTO){
        characterName.text = model.name
        characterStatus.text = model.status.rawValue
        characterImageView.kf.setImage(with: URL(string: model.image))
        
    }
}
