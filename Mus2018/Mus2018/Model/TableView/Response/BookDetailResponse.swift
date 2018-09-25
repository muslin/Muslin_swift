//
//  BookDetailResponse.swift
//  Mus2018
//
//  Created by Muslin on 25/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import ObjectMapper

class BookDetailResponse: BaseModel {
    
    var ebook_code = ""
    var ebook_codeDisplay = ""
    
    override func mapping(map: Map) {
        ebook_code    <- map["ebook_code"]
        ebook_codeDisplay = "\(ebook_code) model"
    }
}
