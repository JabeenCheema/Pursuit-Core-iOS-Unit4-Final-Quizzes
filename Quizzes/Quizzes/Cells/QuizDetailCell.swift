//
//  QuizDetailCell.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizDetailCell: UICollectionViewCell {
    
        public lazy var quizLabel: UILabel = {
            let label = UILabel()
            label.textAlignment = .center
            label.numberOfLines = 0
            return label
        }()
        
        override init(frame: CGRect) {
            super.init(frame: UIScreen.main.bounds)
            setupQuizLabel()
           
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            
        }
    
        private func setupQuizLabel() {
            addSubview(quizLabel)
            quizLabel.translatesAutoresizingMaskIntoConstraints = false
            quizLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            quizLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
            quizLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
            quizLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
            
        }
        
    }

