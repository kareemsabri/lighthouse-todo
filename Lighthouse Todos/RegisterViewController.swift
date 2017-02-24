//
//  RegisterViewController.swift
//  Lighthouse Todos
//
//  Created by Kareem Sabri on 2017-02-23.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    @IBAction func didTapRegisterButton(_ sender: UIButton) {
        //@todo: create a user and save it to server
        //once done, go to lists of user
    }
    
    private func goToListsOfUser(_ user: User) {
        let listsViewController = storyboard!.instantiateViewController(withIdentifier: ListsViewController.identifier) as! ListsViewController
        listsViewController.user = user
        navigationController?.pushViewController(listsViewController, animated: true)
    }
}

