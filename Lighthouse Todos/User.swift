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
    static var baseEndpoint = API.root + "/users"
    var endpoint: String {
        var base = User.baseEndpoint
        if let id = self.id {
            base += "/\(id)"
        }
        return base
    }
    
    var id: Int!
    var email: String = ""
    
    init?(response: HTTPURLResponse, representation: Any) {
        //@todo init a user with the response from server
        guard let representation = representation as? [String: Any] else { return nil }
        self.id = representation["id"] as! Int
        self.email = representation["email"] as! String
    }
    
    func getLists(callback: (_ lists: [List]) -> Void) {
        let listsEndpoint = self.endpoint + "/lists"
        Alamofire.request(listsEndpoint).responseCollection { (response: DataResponse<[List]>) in
            debugPrint(response)
            
            if let lists = response.result.value {
                callback(lists)
            }
        }
    }

    
}
