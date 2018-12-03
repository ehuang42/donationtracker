////
////  ViewController.swift
////  donationtracker2
////
////  Created by Eva Huang on 12/3/18.
////  Copyright © 2018 Eva Huang. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    
//    //    var ref: DatabaseReference!
//    //    ref = Database.database().reference()
//    
//    // Listen for new comments in the Firebase database
//    //    ref.observe(.childAdded, with: { (snapshot) -> Void in
//    //    self.comments.append(snapshot)
//    //    self.tableView.insertRows(at: [IndexPath(row: self.comments.count-1, section: self.kSectionComments)], with: UITableViewRowAnimation.automatic)
//    //    })
//    //    // Listen for deleted comments in the Firebase database
//    //    commentsRef.observe(.childRemoved, with: { (snapshot) -> Void in
//    //    let index = self.indexOfMessage(snapshot)
//    //    self.comments.remove(at: index)
//    //    self.tableView.deleteRows(at: [IndexPath(row: index, section: self.kSectionComments)], with: UITableViewRowAnimation.automatic)
//    //    })
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.delegate = self
//        tableView.dataSource = self
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell()
//        cell.textLabel?.text = "This is row \(indexPath.row)"
//        
//        return cell
//    }
//}
//
