//
//  FoaasOperation.swift
//  BYT
//
//  Created by Sabrina Ip on 11/22/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import Foundation

//Endpoint: /operations
//GET http://www.foaas.com/operations

// Need to conform to DataConvertible as well
//DataConvertible
//init?(data: Data)
//func toData() throws -> Data

class FoaasOperation: JSONConvertible {
    let name: String
    let url: String
    let fields: [[String:String]]
    
    required init?(json: [String: AnyObject]) {
        guard let nm = json["name"] as? String,
            let u = json["url"] as? String,
            let flds = json["fields"] as? [[String:String]]
            else { return nil }
        name = nm
        url = u
        fields = flds
    }
    
    func toJson() -> [String : AnyObject] {
        let json = ["name" : name as AnyObject,
                    "url" : url as AnyObject,
                    "fields" : fields as AnyObject]
        return json
    }
    
}
