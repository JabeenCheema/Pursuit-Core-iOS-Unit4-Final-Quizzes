//
//  ProfileViewController.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    let profileView = ProfileView()
    
    private var imagePickerController: UIImagePickerController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       profileView.backgroundColor = .white
        self.view.addSubview(profileView)
        self.profileView.profileButton.addTarget(self, action: #selector(setImageAlert), for: .touchUpInside)
        userDefault()
        setUpAlertController()
//        imagePickerController.delegate = self
        
        
        
    }
    
    @objc func profileImage() {
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            present(imagePickerController, animated: true)
        }
    }
    
    @objc func setImageAlert() {
        let alert = UIAlertController(title: "Options", message: "Options", preferredStyle: .actionSheet)
        let photoLibrary = UIAlertAction(title: "Photo Library", style: .default) { (alert: UIAlertAction) in
            self.profileImage()
        }
    
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (alert) in
            self.dismiss(animated: true, completion: nil)
        }
    alert.addAction(photoLibrary)
    alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    
    }

    func setUpAlertController() {
        let alertController = UIAlertController(title: "Enter your username", message: "", preferredStyle: .alert)
        alertController.addTextField { (textfield) in
            textfield.font = UIFont.boldSystemFont(ofSize: 17)
            textfield.layer.cornerRadius = 7.0
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (alert: UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
        let submit = UIAlertAction(title: "Submit", style: .default) { (alert) in
            guard let userName = alertController.textFields?.first?.text
                else {
                    return
            }
            self.profileView.usernameLabel.text = userName
            
            UserDefaults.standard.set(userName, forKey: UserDefaultKeys.DefaultSearchKey)
        }
        alertController.addAction(cancel)
        alertController.addAction(submit)
        present(alertController, animated: true, completion: nil)
    }
    
    private func userDefault() {
        if let defaultUsername = UserDefaults.standard.object(forKey: UserDefaultKeys.DefaultSearchKey) as? String {
            
            
            self.profileView.profileButton.addTarget(self, action: #selector(setImageAlert), for: .touchUpInside)
            self.profileView.usernameLabel.text = defaultUsername
           
        } else {
            print("User Deafult not working")
        }
    }
    
}

extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { // i need to undertstand when to use guard and if let and if
            profileView.profileButton.setBackgroundImage(image, for: .normal)
        } else {
            print ("image is not working")
        }
    dismiss(animated: true, completion: nil)
    }
}
    
    
    

