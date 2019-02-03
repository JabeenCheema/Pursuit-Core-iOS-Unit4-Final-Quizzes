//
//  CreateQuizView.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateQuizView: UIView {

    lazy var quiztextfield: UITextField = {
    let textfield = UITextField()
        textfield.backgroundColor = .white
        textfield.placeholder = "Enter question here"
        return textfield
    }()

    lazy var textviewone: UITextView = {
        let textview = UITextView()
            textview.backgroundColor = .white
            textview.text = "Enter first quiz fact here"
            return textview
        }()
    
    lazy var textviewtwo: UITextView = {
        let othertextview = UITextView()
            othertextview.backgroundColor = .white
            othertextview.text = "Enter second quiz fact here"
        return othertextview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)

        setUptextfield()
        setUpFirstTextView()
        setUpSecondTextView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUptextfield() {
        addSubview(quiztextfield)
        quiztextfield.translatesAutoresizingMaskIntoConstraints = false
        quiztextfield.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant:80).isActive = true
        quiztextfield.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        quiztextfield.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        quiztextfield.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setUpFirstTextView() {
        addSubview(textviewone)
        textviewone.translatesAutoresizingMaskIntoConstraints = false
        textviewone.topAnchor.constraint(equalTo: quiztextfield.bottomAnchor, constant: 11).isActive = true
        textviewone.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        textviewone.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        textviewone.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.35).isActive = true
    }
    
    func setUpSecondTextView() {
        addSubview(textviewtwo)
        textviewtwo.translatesAutoresizingMaskIntoConstraints = false
        textviewtwo.topAnchor.constraint(equalTo: textviewone.bottomAnchor, constant: 11).isActive = true
        textviewtwo.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        textviewtwo.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        textviewtwo.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.35).isActive = true
    }
    
    
    
}
