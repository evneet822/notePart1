//
//  ViewController.swift
//  evneet_759831_note
//
//  Created by MacStudent on 2019-11-07.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var folders : [String]?
    
    
    @IBOutlet var tableview: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.rightBarButtonItem = editButtonItem
        folders = []
       
    }


    @IBAction func newFolder(_ sender: UIBarButtonItem) {
        
        let alercontroller = UIAlertController(title: "New Folder", message: "Enter a name for this folder", preferredStyle: .alert)
        
       alercontroller.addTextField { (text) in
           text.placeholder = "name"
       }
        
        
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        alercontroller.addAction(cancelAction)
        alercontroller.addAction(UIAlertAction(title: "Add Item", style: .default, handler: { (action) in
            
            
            let name = alercontroller.textFields?.first?.text
            self.folders?.append(name!)
            self.tableview.reloadData()
            
        }))
        
//         UIAlertAction(title: "Add Item", style: .default) { (action) in
//            let name = alercontroller.textFields?.first?.text
//
//            self.folders?.append(name!)
//            self.tableview.reloadData()
//            print(self.folders!)
//        }
//
        
        self.present(alercontroller, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return folders?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard folders  != nil else {
            return UITableViewCell()
        }
        
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "")
        cell.textLabel?.text = folders![indexPath.row]
        cell.imageView?.image = UIImage(named: "folder-icon")
        
        return cell
    }
   
}

