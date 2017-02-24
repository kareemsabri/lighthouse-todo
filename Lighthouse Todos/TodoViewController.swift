//
//  TodoViewController.swift
//  Lighthouse Todos
//
//  Created by Kareem Sabri on 2017-02-23.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

import UIKit

class TodoViewController: UIViewController, UITextFieldDelegate {
    static let identifier = "TodoViewController"
    
    var todo: Todo!
    
    @IBOutlet weak var todoNameTextField: UITextField!
    @IBOutlet weak var completedSwitch: UISwitch!
    @IBOutlet weak var deleteTodoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Edit Todo"
        //@todo: set textfield and completed switch states to match todo values
    }
    
    @IBAction func didToggleCompletedSwitch(_ sender: UISwitch) {
        //@todo: set todo to completed, save it
    }
    
    @IBAction func didTapDeleteTodoButton(_ sender: UIButton) {
        //@todo: delete todo, get outta here
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        //@todo: update todo name, save it
        return true
    }
}
