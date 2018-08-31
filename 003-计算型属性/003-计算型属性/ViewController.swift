//
//  ViewController.swift
//  003-计算型属性
//
//  Created by 张云翥 on 2018/8/31.
//  Copyright © 2018年 张云翥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var p = Person()
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let p = Person()
        
        p.name = "老王"
        
        
        /*空合并运算符  (a ?? b) 将对可选类型a进行空判断，如果a包含一个值就进行解封，否则就返回一个默认值b。
         两个条件：表达式a必须是可选类型，默认值b的类型必须要和a存储值的类型一致*/
        print(p.name ?? "")
        
       // p.title = "老李"
       // 'title' is a get-only property
        print(p.title)
        print(p.titil2)
        
        
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        p.name = "zhuzhu"
        print(p.title)
        print(p.titil2)//懒加载的不会改
    }


}

