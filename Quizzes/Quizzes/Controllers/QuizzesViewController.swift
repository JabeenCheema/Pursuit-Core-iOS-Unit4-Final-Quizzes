//
//  QuizzesViewController.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizzesViewController: UIViewController {

    var quizzesview = QuizzesView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.681110013, green: 0.874832622, blue: 0.9764705896, alpha: 1)
        self.view.addSubview(quizzesview)
        quizzesview.quizcollectionview.register(QuizCell.self, forCellWithReuseIdentifier: "QuizCell")
        quizzesview.quizcollectionview.dataSource = self
        quizzesview.quizcollectionview.delegate = self


        
    }
}

extension QuizzesViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = quizzesview.quizcollectionview.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizCell else { return UICollectionViewCell() }
        cell.backgroundColor = .gray
        return cell
    }
    
    
}
