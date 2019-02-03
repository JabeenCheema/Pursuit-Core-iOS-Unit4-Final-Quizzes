//
//  QuizCell.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizCell: UICollectionViewCell {
    
    public lazy var quizLabel: UILabel = {
        let quizLabel = UILabel()
        quizLabel.textAlignment = .center
        quizLabel.numberOfLines = 2
        quizLabel.backgroundColor = .red
        return quizLabel
    }()

    public lazy var optionsButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "more-filled"), for: .normal)
        button.showsTouchWhenHighlighted = true
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setUpQuizLabel()
        setUpOptionsButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpQuizLabel() {
        addSubview(quizLabel)
        quizLabel.translatesAutoresizingMaskIntoConstraints = false
        quizLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        quizLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        quizLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
//        quizLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
//        quizLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }

    private func setUpOptionsButton() {
        addSubview(optionsButton)
        optionsButton.translatesAutoresizingMaskIntoConstraints = false
        optionsButton.topAnchor.constraint(equalTo: topAnchor, constant: 11).isActive = true
        optionsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        optionsButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        optionsButton.widthAnchor.constraint(equalToConstant: 30).isActive = true 
    }
    
    
    
}
