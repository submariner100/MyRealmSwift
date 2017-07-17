//
//  DBManager.swift
//  MyRealmSwift
//
//  Created by Macbook on 16/07/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit
import RealmSwift

class DBManager {
     
     private var database:Realm
     static let sharedInstance = DBManager()
     
     private init() {
          
          database = try! Realm()
     }
     
    func getDataFromDB() -> Results<Item> {
     
     let results: Results<Item> = database.objects(Item.self)
     
     return results
     
     }
     
     func addData(object: Item) {
          
          try! database.write {
               
               database.add(object, update: true)
               
               print("Added new object")
          }
          
     }
     
     func deleteAllDatabase() {
          
          try! database.write {
               
               database.deleteAll()
          }
     }
     
     func deleteFromDB(object: Item) {
          
          try! database.write {
               
               database.delete(object)
               
          }
     
     }
 
}

