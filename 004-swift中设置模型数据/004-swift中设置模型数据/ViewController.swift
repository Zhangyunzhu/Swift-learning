//
//  ViewController.swift
//  004-swift中设置模型数据
//
//  Created by 张云翥 on 2018/8/31.
//  Copyright © 2018年 张云翥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p = Person()
        p.name = "Topus"
        p.textcolor = UIColor.red
        p.backgroundcolor = UIColor.blue
        
        
        let lable = DemoLable(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        
        //将模型设置给lable(当然可以在自己的对象上直接设置)
        lable.preson = p
        
        self.view.addSubview(lable)
        
        
        
        
    }


}

