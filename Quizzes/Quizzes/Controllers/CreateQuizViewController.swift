//
//  CreateQuizViewController.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateQuizViewController: UIViewController {

    var createquiz = CreateQuizView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        self.view.addSubview(createquiz)
        navigationItem.title = "Create Quiz"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Create", style: .plain, target: self, action: #selector(createBarButton))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelCreate))
//createquiz.quiztextfield.delegate = self
//        createquiz.textviewone
    }
    
    @objc func createBarButton(){
        Item.init(title: "quiz text field", firsttextDescription: "first description", secondtextDescription: "second description", createdAt: "")

       }
   
    @objc func cancelCreate() {
        createquiz.quiztextfield.text = ""
        createquiz.textviewone.text = ""
        createquiz.textviewtwo.text = "" 
        
    }
    
    
    
}

extension CreateQuizViewController: UITextFieldDelegate, UITextViewDelegate {
    
}
