//
//  ShowDateResponse.swift
//  Test2018
//
//  Created by Muslin on 26/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import ObjectMapper

class ShowDateResponse: BaseModel {
    
    var id = 1
    var name = ""
    var date = 0.0
    
    override func mapping(map: Map) {
        id    <- map["id"]
        name    <- map["name"]
        date    <- map["date"]
        
    }
}
