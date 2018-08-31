//
//  Person.swift
//  003-计算型属性
//
//  Created by 张云翥 on 2018/8/31.
//  Copyright © 2018年 张云翥. All rights reserved.
//

import UIKit

class Person: NSObject {
    var _name :String?
    var name :String?{
        get{
            return _name
        }
        set{
            _name = newValue
        }
    }
    
    
    var title :String{
        //只重写了getter方法没重写setter方法及为只读属性
        return "Topus" + (name ?? "")
    }
    
    
    
}
