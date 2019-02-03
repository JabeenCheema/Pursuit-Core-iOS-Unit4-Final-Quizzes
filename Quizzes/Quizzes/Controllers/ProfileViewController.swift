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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       profileView.backgroundColor = .white
    self.view.addSubview(profileView)
        
        
    }
    

    

}
