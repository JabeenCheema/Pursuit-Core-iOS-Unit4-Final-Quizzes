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
    
    var userquiz = [UserQuiz]() {
        didSet {
            DispatchQueue.main.async {
                self.quizzesview.quizcollectionview.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(quizzesview)
        quizzesview.quizcollectionview.register(QuizCell.self, forCellWithReuseIdentifier: "QuizCell")
        quizzesview.quizcollectionview.delegate = self
        quizzesview.quizcollectionview.dataSource = self
       


        
    }
}

extension QuizzesViewController: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return userquiz.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = quizzesview.quizcollectionview.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizCell else { return UICollectionViewCell() }
        cell.backgroundColor = .gray
//        cell.optionsButton.addTarget(self, action: #selector(optionsButtonPressed), for: .touchUpInside)
        return cell
    }
    
//    @objc func optionsButtonPressed(optionsbutton: UIButton) {
//
////        let index = optionsbutton.tag
//
//        let actionsheet = UIAlertController(title: "Delete", message: "Options", preferredStyle: .actionSheet)
//
//        let delete = UIAlertAction(title: "Delete", style: UIAlertAction.Style.destructive) { (delete) in
//            <#code#> // I need to work on the data persistence part to do this
//        }
    
//    let cancel = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { (cancel) in
//
//    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        
        let detailvc = QuizDetailViewController()
        
        navigationController?.pushViewController(detailvc, animated: true)
    }
}
