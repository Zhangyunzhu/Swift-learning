//
//  UIButton+extension.swift
//  001-第02天(Swift面向对象)
//
//  Created by 张云翥 on 2018/7/16.
//  Copyright © 2018年 张云翥. All rights reserved.
//

import UIKit

extension UIButton{
//    Designated initializer cannot be declared in an extension
    //被重新设计的初始化器不能再累扩展里面被申明，必须使用便利构造函数
    convenience init(frame: CGRect,title:String,UIColor:UIColor) {
        self.init(frame: frame)
//        self.frame = frame
        self.setTitle(title, for: UIControlState(rawValue: 0))
        self.setTitleColor(UIColor, for: UIControlState(rawValue: 0))
        self.sizeToFit()
    }
}
