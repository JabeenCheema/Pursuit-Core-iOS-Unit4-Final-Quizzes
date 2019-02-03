//
//  SearchQuizzesViewController.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchQuizzesViewController: UIViewController {

    var searchquizview = SearchQuizView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        self.view.addSubview(searchquizview)
        
        searchquizview.searchcollectionview.register(SearchCell.self, forCellWithReuseIdentifier: "SearchCell")
        searchquizview.searchcollectionview.dataSource = self
        searchquizview.searchcollectionview.delegate = self 

        
    }
    
}

extension SearchQuizzesViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = searchquizview.searchcollectionview.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCell else { return UICollectionViewCell() }
        cell.backgroundColor = .gray
        return cell
    }
    
    
    
}
