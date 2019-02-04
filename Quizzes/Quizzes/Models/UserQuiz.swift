//
//  UserQuizModel.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/3/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct UserQuiz: Codable {
    let id: String
    let quizTitle: String
    let facts: [String]
}
