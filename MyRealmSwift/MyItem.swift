//
//  MyItem.swift
//  MyRealmSwift
//
//  Created by Macbook on 16/07/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit
import RealmSwift


class Item: Object {
     
     dynamic var ID = -1
     dynamic var textString = ""
     
     override static func primaryKey() -> String? {
          
          return "ID"
     }
       
}
