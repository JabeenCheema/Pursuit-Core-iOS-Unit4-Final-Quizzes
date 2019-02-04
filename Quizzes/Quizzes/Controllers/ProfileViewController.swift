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

}
