//
//  SearchQuizView.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchQuizView: UIView {

    lazy var searchcollectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 400, height: 400) // cell size
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 11, left: 11, bottom: 11, right: 11)
        
        let cv = UICollectionView(frame: frame, collectionViewLayout: layout)
        cv.backgroundColor = .blue
        
        
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setupSearchCollectionView()
        self.backgroundColor = .green           // this is the color of the view 
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    func setupSearchCollectionView() {
        addSubview(searchcollectionview)
        searchcollectionview.translatesAutoresizingMaskIntoConstraints = false
       searchcollectionview.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true

        searchcollectionview.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        searchcollectionview.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        searchcollectionview.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        searchcollectionview.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        searchcollectionview.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true 
        
    }
    
    

}
