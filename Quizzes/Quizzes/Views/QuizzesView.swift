//
//  QuizzesView.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizzesView: UIView {

    lazy var quizcollectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 175, height: 175)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 11, left: 11, bottom: 11, right: 11)
        
        let cv = UICollectionView(frame: frame, collectionViewLayout: layout)
        cv.backgroundColor = .blue
        
        
        return cv
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setupCollectionView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    func setupCollectionView() {
        addSubview(quizcollectionview)
        quizcollectionview.translatesAutoresizingMaskIntoConstraints = false
        quizcollectionview.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
        quizcollectionview.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        quizcollectionview.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        quizcollectionview.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true 
        
    }



}
