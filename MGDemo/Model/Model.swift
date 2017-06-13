//
//  Model.swift
//  MGDemo
//
//  Created by Harry on 13/06/2017.
//  Copyright © 2017 harry. All rights reserved.
//

import Foundation
import UIKit

class Model:NSObject{
    var isInit:Bool = true  // 是否是初始状态
}

class FirstModel:Model{
    var name:String  = "A"
    var first:String = "A加载中... 成功"
}

class SecondModel:Model{
    var name:String  = "B"
    var second:String = "B加载中... 成功"
}

class ThirdModel:Model{
    var name:String  = "C"
    var third:String = "C加载中... 成功"

}

class FourthModel:Model{
    var name:String  = "D"
    var fourth:String = "D加载完成... 成功"
}

class FifthModel:Model{
    var name:String  = "E"
    var fifth:String = "E加载失败... 成功"
    
}
