//
//  User.swift
//  Lighthouse Todos
//
//  Created by Kareem Sabri on 2017-02-23.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

import Alamofire
import Foundation

final class User: Requestable {
    static let endpoint = API.root + "/users"
    
    var email: String = ""
    
    init?(response: HTTPURLResponse, representation: Any) {
        //@todo init a user with the response from server
        guard let representation = representation as? [String: Any] else { return nil }
        self.email = representation["email"] as! String
    }

    
}
