//
//  RegisterViewController.swift
//  Lighthouse Todos
//
//  Created by Kareem Sabri on 2017-02-23.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

import Alamofire
import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    @IBAction func didTapRegisterButton(_ sender: UIButton) {
        //@create a user and save it to server
        Alamofire.request(User.endpoint, method: .post, parameters: ["email": emailTextField.text!], encoding: JSONEncoding.default, headers: nil).responseObject { (response: DataResponse<User>) in
            
            if let user = response.result.value {
                //@todo: go to lists of user
            }
        }
    }
    
    private func goToListsOfUser(_ user: User) {
        let listsViewController = storyboard!.instantiateViewController(withIdentifier: ListsViewController.identifier) as! ListsViewController
        listsViewController.user = user
        navigationController?.pushViewController(listsViewController, animated: true)
    }
}

