//
//  ListsViewController.swift
//  Lighthouse Todos
//
//  Created by Kareem Sabri on 2017-02-23.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

import UIKit
import Alamofire

class ListsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    static let identifier = "ListsViewController"
    
    var user: User!
    var lists: [List] = []
    
    @IBOutlet weak var listNameTextField: UITextField!
    @IBOutlet weak var listsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "My Lists"
        //@todo: fetch lists for user
        self.user.getLists { (lists) in
            self.lists = lists
            self.listsTableView.reloadData()
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        //todo: put list data in cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todosViewController = storyboard!.instantiateViewController(withIdentifier: TodosViewController.identifier) as! TodosViewController
        todosViewController.list = lists[indexPath.row]
        navigationController?.pushViewController(todosViewController, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        //@todo: save list and add it to lists when done
        return true
    }

}
