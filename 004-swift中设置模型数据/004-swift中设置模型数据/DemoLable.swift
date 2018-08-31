//
//  DemoLable.swift
//  004-swift中设置模型数据
//
//  Created by 张云翥 on 2018/8/31.
//  Copyright © 2018年 张云翥. All rights reserved.
//

import UIKit

class DemoLable: UILabel {

    //视图根据自己模型的数据，决定显示的内容
    var preson : Person?{
        //代替OC中重写setter方法
        //不在需要 _成员变量 = 值
        didSet{
            text = preson?.name
            textColor = preson?.textcolor
            backgroundColor = preson?.backgroundcolor
        }
    }
    

}
