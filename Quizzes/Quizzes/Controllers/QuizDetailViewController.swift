//
//  QuizDetailViewController.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizDetailViewController: UIViewController {

    var quizdetailview = QuizDetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.view.addSubview(quizdetailview)
        

       
    }
    
}

extension QuizDetailViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let quizDetailCell = quizdetailview.collectionview.dequeueReusableCell(withReuseIdentifier: "QuizDetailCell", for: indexPath) as? QuizDetailCell else { return UICollectionViewCell() }
        return quizDetailCell
    }
    
    
}
