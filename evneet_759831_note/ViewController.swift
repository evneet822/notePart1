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
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.rightBarButtonItem = editButtonItem
    }


    @IBAction func newFolder(_ sender: UIBarButtonItem) {
        
        let alercontroller = UIAlertController(title: "New Folder", message: "Enter a name for this folder", preferredStyle: .alert)
        alercontroller.addTextField { (textFeild) in
            textFeild.text = "name"
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let addItemAction = UIAlertAction(title: "Add Item", style: .cancel, handler: nil)
        
        
        alercontroller.addAction(cancelAction)
        alercontroller.addAction(addItemAction)
        
        self.present(alercontroller, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return folders?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
        
    }
}

