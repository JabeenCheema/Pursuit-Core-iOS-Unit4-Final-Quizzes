//
//  ProfileView.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    lazy var editPhotoLabel: UILabel = {
        let editPhotoLabel = UILabel()
        editPhotoLabel.text = "Edit Photo"
        editPhotoLabel.backgroundColor = #colorLiteral(red: 1, green: 0.8602354673, blue: 0.8851751726, alpha: 1)
        return editPhotoLabel
    }()
    
    lazy var view: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.9453986005, blue: 0.7692849898, alpha: 1)
        return view
    }()

    lazy var profileButton: UIButton = {
        let profileButton = UIButton()
        profileButton.setBackgroundImage(UIImage(named: "placeholder-image"), for: .normal)
        profileButton.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        return profileButton
    }()

    lazy var usernameLabel: UILabel = {
        let usernameLabel = UILabel()
        usernameLabel.text = "username"
        return usernameLabel
        }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        //addSubview(editPhotoLabel)
        //addSubview(view)
        //addSubview(profileButton)
       // addSubview(usernameLabel)
        setEditPhotoLabel()
        setViewConstraints()
        setProfileButtonConstraints()
        setusernameLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setEditPhotoLabel() {
        addSubview(editPhotoLabel)
        editPhotoLabel.translatesAutoresizingMaskIntoConstraints = false
        editPhotoLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 120).isActive = true
        editPhotoLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        editPhotoLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        editPhotoLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        //editPhotoLabel.widthAnchor.constraint(equalToConstant: 12).isActive = true
    }
    private func setViewConstraints() {
         addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: editPhotoLabel.bottomAnchor, constant: 30).isActive = true
        view.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        view.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        view.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.50).isActive = true
       
    }

    private func setProfileButtonConstraints() {
         addSubview(profileButton)
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        profileButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        profileButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.50).isActive = true
        profileButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.60).isActive = true
      
    }

    private func setusernameLabel() {
         addSubview(usernameLabel)
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 30).isActive = true
        usernameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        usernameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11)
        usernameLabel.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 20)
        
       
        
    }

}
