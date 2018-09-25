//
//  BookDetailRequest.swift
//  Mus2018
//
//  Created by Muslin on 25/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import Alamofire
import ObjectMapper

struct BookDetailRequest {
    
    var bookcode: String
    
    var dictionary: Parameters? {
        return ["bookcode" : bookcode]
    }
}
