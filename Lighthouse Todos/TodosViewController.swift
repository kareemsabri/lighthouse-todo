//
//  TodosViewController.swift
//  Lighthouse Todos
//
//  Created by Kareem Sabri on 2017-02-23.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

import UIKit

class TodosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    static let identifier = "TodosViewController"
    
    var list: List!
    
    @IBOutlet weak var todoNameTextField: UITextField!
    @IBOutlet weak var todosTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //@todo: set nav title to list name
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //@todo: return number of todos in list
        return 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //@todo goal 1: set todo as completed and save it - show checkmark
        //@todo goal 2: go to a new view where they can rename, delete, or mark todo as completed, save it, and come back here
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        //@todo: put todo info on cell, set checkmark if complete
        return cell
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        //@todo: save Todo from text and add it to todos
        return true
    }
}
