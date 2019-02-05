//
//  Item.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/4/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct Item: Codable {  // this is is to be able to create a quiz and save in our documents directory
    
    let title: String
    let firsttextDescription: String
    let secondtextDescription: String
    
    let createdAt: String
    
    public var dateFormattedString: String {
        let isoDateFormatter = ISO8601DateFormatter()
        var formattedDate = createdAt
        if let date = isoDateFormatter.date(from: createdAt) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMMM d, yyyy hh:mm a"
            formattedDate = dateFormatter.string(from: date)
        }
        return formattedDate
        }
    
    
    
    public var date: Date {
        let isoDateFormatter = ISO8601DateFormatter()
        var formattedDate = Date()
        if let date = isoDateFormatter.date(from: createdAt) {
            formattedDate = date
            }
        return formattedDate
    }
}
