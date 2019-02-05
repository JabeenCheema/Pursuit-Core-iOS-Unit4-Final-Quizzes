//
//  ItemModel.swift
//  Quizzes
//
//  Created by Jabeen's MacBook on 2/4/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class ItemModel {

private static let fileName = "QuizSaved.plist"
private static var items = [Item]()
static func getItems() -> [Item] {
    
    let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: fileName).path
    
    if FileManager.default.fileExists(atPath: path) {
        
        if let data = FileManager.default.contents(atPath: path) {
            
            do {
                
                items = try PropertyListDecoder().decode([Item].self, from: data)
                
            } catch {
                
                print("Property list decoding erroe: \(error)")
            }
            } else {
            print("data is nil")
            }
        } else {
        print("\(fileName) doesn't exist")
        }
    items = items.sorted{$0.date > $1.date}
    return items
    }
static func addItem(item: Item) {
    //Append to array of items
    
    items.append(item)
    save()
    
}
static func delete(item: Item, atIndex index: Int) {
    
    items.remove(at: index)
    save()
    
}

static func save() {
    // path
    let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: fileName)
    do {
        
        let data = try PropertyListEncoder().encode(items)
        
        try data.write(to: path, options: Data.WritingOptions.atomic)
        
    } catch {
        
        print("Property list encoding error: \(error)")
        }
    }
}
