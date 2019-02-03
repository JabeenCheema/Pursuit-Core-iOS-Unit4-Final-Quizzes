//
//  SearchCell.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchCell: UICollectionViewCell {
    
//    public lazy var searchLabel: UILabel = {
//        let searchLabel = UILabel()
//        searchLabel.textAlignment = .center
//        searchLabel.numberOfLines = 2
//        return searchLabel
//        }()

    public lazy var addButton: UIButton = {
        let addButton = UIButton()
        addButton.setImage(UIImage(named: "add-icon-filled"), for: .normal)
        return addButton
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setUpAddButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpAddButton() {
        addSubview(addButton)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.topAnchor.constraint(equalTo: topAnchor, constant: 11).isActive = true
        addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addButton.widthAnchor.constraint(equalToConstant: 50).isActive = true 
    }
    
}
