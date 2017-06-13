//
//  HttpRequest.swift
//  MGDemo
//
//  Created by Harry on 13/06/2017.
//  Copyright © 2017 harry. All rights reserved.
//

import Foundation

//import Alamofire
//import SwiftyJSON
//import ObjectMapper
/*

 以下接口为模拟接口
 真实接口会用 Alamofire  进行json数据接收 
 然后使用 Swift有JSON 进行解析
 Model 会直接使用 ObjectMapper 进行对应数据


*/

let host:String = "http://www.xxx.com/api"

class HttpRequest:NSObject{

    
    enum API:String {
        case first    =  "/first"
        case second   = "/second"
        case third    = "/third"
        case fourth   = "/fourth"
        case fifth    = "/fifish"
    }
    
    // 以下为封装的5个接口 每个接口获取数据的时间不同 同时获取的数据也不同
    
    class func firstAPI(success:@escaping (_ first:FirstModel)->()){
    
        self.fetchData(api: host + API.first.rawValue, time: 1) {
            let first = FirstModel()
            first.isInit = false
            success(first)
        }
        
    }
    
    
    class func secondAPI(success:@escaping (_ second:SecondModel)->()){
        
        self.fetchData(api: host + API.second.rawValue, time: 1.5) {
            let second = SecondModel()
            second.isInit = false
            success(second)
        }
        
    }

    class func thirdAPI(success:@escaping (_ third:ThirdModel)->()){
        
        self.fetchData(api: host + API.third.rawValue, time: 2) {
            let third = ThirdModel()
            third.isInit = false
            success(third)
        }
        
    }
    class func fourthAPI(success:@escaping (_ fourth:FourthModel)->()){
        
        self.fetchData(api: host + API.fourth.rawValue, time: 2.5) {
            let fourth = FourthModel()
            fourth.isInit = false
            success(fourth)
        }
        
    }
    
    class func fifthAPI(success:@escaping (_ fifth:FifthModel)->()){
        
        self.fetchData(api: host + API.fifth.rawValue, time: 3) {
            let fifth = FifthModel()
            fifth.isInit = false
            success(fifth)
        }
        
    }

    
//    获取数据封装的接口 
//    @time 模拟接收数据需要的时间
//    @success 获取数据后通过block 进行异步操作
    
    class  func fetchData(api:String,time:TimeInterval,success:@escaping ()->()){
        Timer.scheduledTimer(withTimeInterval: time, repeats: false) { (Timer) in
            success()
        }
     }
    
// 以下为真实的调用接口 仅作为示例
    
//    Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).responseJSON { (response) in
//        if let result = response.result.value {
//            let json = JSON(result)
//            if  json["code"].int == 200 {
//                success(json["data"])
//            }
//            
//        }
//    }
    
    
}
