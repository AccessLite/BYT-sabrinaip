//
//  FoaasField.swift
//  BYT
//
//  Created by Sabrina Ip on 11/22/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import Foundation

// Corresponds to the "field" dictionary in a FoaasOperation

class FoaasField: JSONConvertible, CustomStringConvertible {
    let name: String
    let field: String
    var description: String {
        get {
            return "\(name), \(field)"
        }
    }
    
    required init?(json: [String: AnyObject]) {
        guard let nm = json["name"] as? String,
            let fld = json["field"] as? String
            else { return nil }
        name = nm
        field = fld
    }
    
    func toJson() -> [String : AnyObject] {
        let json = ["name" : name as AnyObject,
                    "field" : field as AnyObject]
        return json
    }
}
