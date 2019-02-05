//
//  SearchCell.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

protocol AddButtonDelegate: AnyObject {
    func addQuizButton()
}

class SearchCell: UICollectionViewCell {
    
    var delegate: AddButtonDelegate?  // what is this var and why do i need the question mark
    
//    public lazy var searchBar: UISearchBar = {
//        let searchBar = UISearchBar()
//        searchBar
//    }()
    public lazy var searchLabel: UILabel = {
        let searchLabel = UILabel()
        searchLabel.textAlignment = .center
        searchLabel.numberOfLines = 2
        return searchLabel
        }()

    public lazy var addButton: UIButton = {
        let addButton = UIButton()
        addButton.setImage(UIImage(named: "add-icon-filled"), for: .normal)
        addButton.addTarget(self, action: #selector(addButtonPressed), for: .touchUpInside)
        return addButton
    }()

    @objc func addButtonPressed() {
        delegate?.addQuizButton() // why do i need to do delegate and why a question mark 
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = #colorLiteral(red: 1, green: 0.9045387371, blue: 0.932782029, alpha: 1)
        setUpAddButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpAddButton() {
        addSubview(addButton)
        addSubview(searchLabel)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.topAnchor.constraint(equalTo: topAnchor, constant: 11).isActive = true
        addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        searchLabel.translatesAutoresizingMaskIntoConstraints = false
        searchLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        searchLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        searchLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        searchLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
}
