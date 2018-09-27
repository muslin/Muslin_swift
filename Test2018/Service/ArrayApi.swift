//
//  ArrayApi.swift
//  Test2018
//
//  Created by Muslin on 27/9/2561 BE.
//  Copyright © 2561 hytexts. All rights reserved.
//

import Alamofire
import ObjectMapper

class ArrayApi: NSObject {
    
    var modelArray: ArrayResponse?
    
    func getArray(completion: @escaping (_ result: ArrayResponse) -> Void) {
        
        Alamofire.request("https://5bab4e29ecc1a70014306ab3.mockapi.io/login", parameters: nil, encoding: JSONEncoding.default).responseJSON { (response: DataResponse<Any>) in
            switch response.result {
            case .success(_):
                if let value = response.value! as? [String : Any] {
                    print(value)
                    self.modelArray = Mapper<ArrayResponse>().map(JSON: value)
                    completion(self.modelArray!)
                }
                break
            case .failure(let errorData):
                print(errorData)
                break
            }
        }
    }
}
