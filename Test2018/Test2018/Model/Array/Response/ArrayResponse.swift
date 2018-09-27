//
//  ArrayResponse.swift
//  Test2018
//
//  Created by Muslin on 27/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import ObjectMapper

class ArrayResponse: BaseModel {
    
    var id = 1
    var name = ""
    var date = 0.0
    var items = [Item]()
    
    override func mapping(map: Map) {
        id    <- map["id"]
        name    <- map["name"]
        date    <- map["date"]
        items    <- map["items"]
        
    }
    
    class Item: BaseModel {
        
        var id = 1
        var muslinName = ""
        
        override func mapping(map: Map) {
            id          <- map["id"]
            muslinName  <- map["muslinName"]
            
        }
        
    }

}

