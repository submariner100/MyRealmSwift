//
//  SecondViewController.swift
//  MyRealmSwift
//
//  Created by Macbook on 16/07/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

     
     var currentItem:Item?
     
     @IBOutlet weak var txtNote: UITextField!
     
     @IBAction func saveButtonClicked(_ sender: Any) {
          
          let item = Item()
          if (currentItem == nil) {
          item.ID = DBManager.sharedInstance.getDataFromDB().count
               
          }
          
          item.textString = txtNote.text!
          DBManager.sharedInstance.addData(object: item)
          self.dismiss(animated: true) { }
     }
    
          
     @IBAction func deleteButtonClicked(_ sender: Any) {
               
               if let item = currentItem {
                    
                    DBManager.sharedInstance.deleteFromDB(object: item)
                    
                    self.dismiss(animated: true) { }
          }
     }
          
     override func viewDidLoad() {
        super.viewDidLoad()

        if let item = currentItem {
          
          txtNote.text = item.textString
     }
}
}

