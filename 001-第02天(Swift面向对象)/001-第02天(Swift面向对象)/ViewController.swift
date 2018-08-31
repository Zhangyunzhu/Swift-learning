//
//  ViewController.swift
//  001-第02天(Swift面向对象)
//
//  Created by 张云翥 on 2018/7/14.
//  Copyright © 2018年 张云翥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

//        print(sum(num1: 10, num2: 20))
//        print(sum1( y: 5))
//        demo()
//        demo3()
//        demo5()
//        demo6()
//        onClickBtn()
//        demo7()
//        demo8()
//        demo9()
//        demo10()
//        demo11()
        demo12()
    }

    //1.外部参数写在参数之前
    func sum(num1 x:Int,num2 y:Int) -> Int {
        return x + y
    }
    
    //2.参数默认值(有了默认参数就可以不用给两个参数赋值，更灵活）
    func sum1(x:Int = 1,y:Int = 2) -> Int {
        return x + y
    }
    
    //3.闭包的定义：提前准备好代码，在需要的时候执行,可当做参数传递
    //函数是特殊的闭包
    func demo() {
        let b1 = {
            print("hello")
        }
        b1()
    }
    //4. 带参数的闭包，in分隔，花括号包的是一段执行的代码
    func demo3(){
        let b2 = { (x:Int) -> Void in
            print(x)
        }
        b2(10)
    }
    
    
    //5.尾随闭包额外参数

    func demo4() {
        //command + control + e 全部替换
        let i = UILabel()
        view.addSubview(i)
        //Extra argument in call 调用了额外参数
       // {//相当于()->Void
       //     let i = UILabel()
       //     view.addSubview(i)
       // }
    }
    
    //6.最后一个参数是闭包（函数），函数可以提前结束后面再跟尾随闭包
    func demo5() {
        DispatchQueue.global().async {
            print("耗时操作")
            
            Thread.sleep(forTimeInterval: 5)//耗时五秒
            
            DispatchQueue.main.async {
            print("回到主线程")
            }
        }
    }
    
    //7.按钮
    
     func onClickBtn() {
        print(#function)
        
    }
    
    func demo6() {
        let btn = UIButton(frame: CGRect(x: 20, y: 50, width: 20, height: 20))
        
        btn.setTitle("张云翥", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1), for: .normal)
        btn.sizeToFit()
        btn.center = view.center
        btn.addTarget(self,action:Selector(("onClickBtn:")), for: .touchUpOutside)
        view.addSubview(btn)
        print(#function)
    }
  
    func demo7() {
        let p = Person()
        print(p)//8.<_01_Á¨¨02Â§©_SwiftÈù¢ÂêëÂØπË±°_.Person: 0x6040000154c0>有命名空间
        let p2 = Person(name: "zyz", age: 18)
        print(p2.age)
        
    }
    
    func demo8() {
        let p = Person()
        print(p.name)
        
        let p1 =  Person(name: "nihao")
        print(p1.name)
        
    }
    
    func demo9() {
        let p = student(dict: ["name" : "raoqian" ])
        print(p.name ?? "")
        //this class is not key value coding-compliant for the key name.'
        //10.kvc找不到key值，因为可选类型是swift里面的，而kvc是oc里的，oc里面的key是基本数据类型（里面可没有可选类型哦）
        
    }
    
    func demo10(){
        //11.swift 4.0的kvc
        let p2 = Person(name:"zyz")
        let nameKeyPath = \Person.name
        let name = p2[keyPath:nameKeyPath]
        print(name)
        p2[keyPath:nameKeyPath] = "haoshuai"
        print(p2.name)
    }
    
    func demo11() {
        let d = Dog(name: "zyz", age: 101)//没输出nil
        let d2 = Dog(name: "rq", age: 22)
        
        print(d?.name ?? "nil")
        print(d2?.name ?? "nil")
    }
    func demo12() {
        let b = UIButton(frame: CGRect(x: 20, y: 20, width: 100, height: 100), title: "按钮", UIColor: UIColor.blue)
        self.view.addSubview(b)
        
    }
}



class Person :NSObject{
    
    var name : String
    var age = 0
    
    //重写
    override init() {
        //9.先初始化自己的属性，在调用父类的构造函数
        //NSObject没有没有属性，只有一个isa的成员变量
        name = "zyz"
        super.init()
        
    }
    
    //重载
    init(name : String) {
        self.name = name
        super.init()
    }
    
    init(name :String,age :Int) {
        self.age = age
        self.name = name
    }
    
    }

class student: NSObject {
    @objc var name :String?
    //12.在Swift4.0之后，类必须要继承自NSObject,同时还需要在属性前面加上@objc
    var name2 :String?
    
    
    init(dict:[String:Any]) {
        
        super.init()
        
        setValuesForKeys(dict)
        
    }
    
}



class Pig {
    var name:String = ""
    init(name:String){
        self.name = name;
    }
}


class Dog: NSObject {
    var name : String?
    var age:Int = 0
    //13.便利构造函数，只有在复合条件时候才创建对象，节省内存,用于筛选对象构造函数参数
    convenience  init?(name : String,age : Int) {
        if age > 100 {
            return nil
        }
        self.init()//只有便利构造函数才使用
        self.name = name
    }
}

    












