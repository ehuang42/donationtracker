//
//  TableViewController.swift
//  donationtracker2
//
//  Created by Eva Huang on 12/3/18.
//  Copyright © 2018 Eva Huang. All rights reserved.
//

import Foundation
import UIKit
import Firebase

struct CellData {
    let title = String.self
    let detail = String.self
}


class Item: UITableViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var ref: DatabaseReference!
//    ref = Database.database().reference()
    
    // Listen for new comments in the Firebase database
//    ref.observe(.childAdded, with: { (snapshot) -> Void in
//    self.comments.append(snapshot)
//    self.tableView.insertRows(at: [IndexPath(row: self.comments.count-1, section: self.kSectionComments)], with: UITableViewRowAnimation.automatic)
//    })
//    // Listen for deleted comments in the Firebase database
//    commentsRef.observe(.childRemoved, with: { (snapshot) -> Void in
//    let index = self.indexOfMessage(snapshot)
//    self.comments.remove(at: index)
//    self.tableView.deleteRows(at: [IndexPath(row: index, section: self.kSectionComments)], with: UITableViewRowAnimation.automatic)
//    })
    
    var postdata = [CellData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
}
