//
//  List.swift
//  Lighthouse Todos
//
//  Created by Kareem Sabri on 2017-02-23.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

import Foundation

final class List: Requestable {
    static var endpoint = API.root + "/lists"
    
    var id: Int!
    var name: String!
    var userId: Int!
    var todos: [Todo] = []
    
    init?(response: HTTPURLResponse, representation: Any) {
        //@todo: init a list with response from server
        //see User.swift for example
        guard let representation = representation as? [String: Any] else {
            return nil
        }
        
        self.id = representation["id"] as! Int
        self.name = representation["name"] as? String
        self.userId = representation["user_id"] as! Int
        self.todos = representation["todos"] as! [Todo]
    }

    
}
