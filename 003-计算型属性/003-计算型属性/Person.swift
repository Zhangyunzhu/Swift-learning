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
        //又称为计算型属性，本身不保存内容，都是通过计算获取结果
        //计算型属性类似于一个函数，没有参数，一定有返回值
        return "Topus" + (name ?? "")
    }
    
    
    //懒加载的titil，本质是一个闭包
    //只在第一次调用的是后执行，后续调用会把结果保存在title2中，会分配空间
    //非懒加载的每次调用都会计算
    lazy var titil2:String = {
    return "Lazy"+( name ?? "")
    }()
    
    
    
    
    
    
}
