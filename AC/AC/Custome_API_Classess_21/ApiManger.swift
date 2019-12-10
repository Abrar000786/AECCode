//
//  ApiManger.swift
//  demoAlomofire
//
//  Created by Sumit Sharma on 10/09/19.
//  Copyright © 2019 Sumit Sharma. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class APIManager: NSObject
{
    static let sharedInstance = APIManager()

    func getApiWithHeader(url: URL, header: HTTPHeaders, onSuccess: @escaping(JSON) -> Void, onFailure: @escaping(Error) -> Void)
    {
        Alamofire.request(url, method: .get, headers: header).responseJSON(completionHandler: { (response) in
            guard response.result.error == nil, let value = response.result.value else
            {
                onFailure(response.result.error!)
                return
            }
            let data = JSON(value)
            onSuccess(data)
        })
    }
    
    func postApiHitWithHeader(url2: URL, parameters2 : Parameters, header: HTTPHeaders ,onSuccess: @escaping(JSON) -> Void, onFailure: @escaping(Error) -> Void)
    {
        Alamofire.request(url2, method: .post, parameters: parameters2, encoding: JSONEncoding.default, headers: header).responseJSON(completionHandler: { (response) in
            guard response.result.error == nil, let value = response.result.value else
            {
                onFailure(response.result.error!)
                return
            }
            let data = JSON(value)
            onSuccess(data)
        })
    }
    
    
    func postApiHit(url2: URL, parameters2 : Parameters, onSuccess: @escaping(JSON) -> Void, onFailure: @escaping(Error) -> Void)
    {
        Alamofire.request(url2, method: .post, parameters: parameters2, encoding: JSONEncoding.default).responseJSON(completionHandler:
        { (response) in
            guard response.result.error == nil, let value = response.result.value else
            {
                onFailure(response.result.error!)
                return
            }
            let data = JSON(value)
            onSuccess(data)
        })
    }

    
/*
     //    func getApi(url: URL, onSuccess: @escaping(JSON) -> Void, onFailure: @escaping(Error) -> Void)
     //    {
     //        Alamofire.request(url, method: .get).responseJSON(completionHandler: { (response) in
     //            guard response.result.error == nil, let value = response.result.value else
     //            {
     //                onFailure(response.result.error!)
     //                return
     //            }
     //            let data = JSON(value)
     //            onSuccess(data)
     //        })
     //    }
     //
     //
     //    func postApiHit(url2: URL, parameters2 : Parameters, onSuccess: @escaping(JSON) -> Void, onFailure: @escaping(Error) -> Void)
     //    {
     //        Alamofire.request(url2, method: .post, parameters: parameters2, encoding: JSONEncoding.default).responseJSON(completionHandler: { (response) in
     //            guard response.result.error == nil, let value = response.result.value else
     //            {
     //                onFailure(response.result.error!)
     //                return
     //            }
     //            let data = JSON(value)
     //            onSuccess(data)
     //        })
     //    }
     
*/
}
