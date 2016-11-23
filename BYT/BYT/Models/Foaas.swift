//
//  Foaas.swift
//  BYT
//
//  Created by Sabrina Ip on 11/22/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import Foundation

// Enpoint: /awesome/:from
// GET http://www.foaas.com/awesome/louis

class Foaas: JSONConvertible, CustomStringConvertible {
    let message: String
    let subtitle: String
    var description: String {
        get {
            return "\(message), \(subtitle)"
        }
    }
    
    required init?(json: [String: AnyObject]){
        guard let msg = json["message"] as? String,
            let stitle = json["subtitle"] as? String
            else { return nil }
        message = msg
        subtitle = stitle
    }
    
    func toJson() -> [String : AnyObject] {
        let json = ["message" : message as AnyObject,
                    "subtitle" : subtitle as AnyObject]
        return json
    }
}



