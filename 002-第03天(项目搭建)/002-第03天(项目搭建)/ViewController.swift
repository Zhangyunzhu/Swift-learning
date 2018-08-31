//
//  ViewController.swift
//  002-第03天(项目搭建)
//
//  Created by 张云翥 on 2018/7/16.
//  Copyright © 2018年 张云翥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label : DemoLabel?
    //懒加载好处：节省内存，不用再解包
    private lazy var button :UIButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
       setupUI()
    }


    private func setupUI(){
        label = DemoLabel()
        
        label?.text = "hello"
        label?.textColor = UIColor.red
        label?.sizeToFit()
        label?.center = view.center//?可选解包，用于调用方法，如果对象存在就调用方法，如果不存在就什么也不做
        //解包为了参与计算
        view.addSubview(label!)
        
        
        //用懒加载不用解包
        button.backgroundColor = UIColor.blue
        button.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        view.addSubview(button)
    }
}

