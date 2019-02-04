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
    var searchQuiz = [Quiz]() {
        didSet {
            DispatchQueue.main.async {
                self.searchquizview.searchcollectionview.reloadData()
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        self.view.addSubview(searchquizview)
        navigationItem.title = "Search Quizzes Online"
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "somthing", style: .plain, target: self, action: #selector(somthingelse))
        searchquizview.searchcollectionview.register(SearchCell.self, forCellWithReuseIdentifier: "SearchCell")
        searchquizview.searchcollectionview.dataSource = self
        searchquizview.searchcollectionview.delegate = self
        getQuiz()

        
    }
    
//    @objc func somthingelse() {
//
//    }
    
    func getQuiz() {
        APIClient.getQuiz { (appError, quizData) in
            if let appError = appError {
                print(appError.errorMessage())
            } else if let data = quizData {
                self.searchQuiz = data
                dump(data)
            }
        }
    }




}

extension SearchQuizzesViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchQuiz.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = searchquizview.searchcollectionview.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCell else { return UICollectionViewCell() }
        let cellinfo = searchQuiz[indexPath.row]
        //cell.backgroundColor = .gray
        cell.searchLabel.text = cellinfo.quizTitle
        return cell
    }
    
    
    
}
