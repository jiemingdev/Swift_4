//
//  TestGrammarViewController.swift
//  Swift_4
//
//  Created by 周鑫 on 2017/7/12.
//  Copyright © 2017年 周鑫. All rights reserved.
//

import UIKit

// 枚举
public enum TestGrammarStyle : Int {
    case one
    case two
}

class TestGrammarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Grammar"
        self.view.backgroundColor = .white
        
        self.addAlertLabel()
        self.testString()
        self.testArray()
        self.testDict()
        self.testPrint()
        self.testConditionalStatement()
        self.testOperator()
    }
    
    func addAlertLabel() {
        let label = UILabel(frame: CGRect(x: 10, y: 100, width: kScreenWidth - 20, height: 100))
        label.text = "请看代码和打印内容"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .red
        self.view.addSubview(label)
    }
    
    // 字符串
    func testString() {
        print("****************** string ******************")
        self.defindString()
        self.jointString()
        self.operationString()
    }
    
    // 定义字符串
    func defindString() {
        let str1 = "hello, world"
        var str2 = "hello, world"
        
        let str5 = ""
        let str6 = String()
        print(str5, str6, "str1 = " + str1, "str2 = " + str2)
    }
    
    // 拼接字符串
    func jointString() {
        let str1 = "hello"
        let str2 = ", world!"
        let str3 = str1 + str2
        print("拼接字符串1: " + str3)
        let str4 = "\(str1)\(str2)"
        print("拼接字符串2: " + str4)
    }
    
    // 字符串操作
    func operationString() {
        
        var str1 = "hello, world"
        var str2 = "hello, world"
        
        // 截取
        let index1 = str1.index(str1.endIndex, offsetBy: -5)
        let index2 = str1.index(str1.startIndex, offsetBy: 5)
        let str3 = str1.substring(from: index1)
        let str4 = str2.substring(to: index2)
        print("str3 = " + str3, "str4 = " + str4)
        
        // 替换
        let range = str1.range(of: "world")
        let str5 = str1.replacingCharacters(in: range!, with: "everyone")
        print(str5)
        
        // 删除
        let index3 = str1.index(str1.startIndex, offsetBy: 7)
        str1.remove(at: index3)
        print(str1)
        
        // 查找
        let flag = str2.contains("hello") // 是否包含
        let flag1 = str2.hasPrefix("hell") // 开头是否包含
        let flag2 = str2.hasSuffix("ld") // 结尾是否包含
        print(flag, flag1, flag2)
        
        // 插入
        str2.insert("a", at: str2.endIndex)
        print(str2)
        
        // 大小写转换
        let str6 = str2.uppercased()
        print(str6)
        
        let str7 = str2.lowercased()
        print(str7)
        
        // 首字母大写
        let str8 = str2.capitalized
        print(str8)
        
        // 拆分字符串为数组
        let str9 = "lala, haha, hehe, heihei"
        let array = str9.components(separatedBy:",")
        print(array)
        
        // 类型强转
        let str10 = "19"
        let float = Float(str10)
        let int = Int(str10)
        print(float!, int!)
    }
    
    // 数组
    func testArray() {
        print("****************** array ******************")
        var array = ["one", "two", "three"] // 这个初始化相当于[String]()
        var array1 = Array<Any>() // 定义空数组
        var array2 = [Any]()
        // 添加
        array.append("four")
        print(array)
        array.insert("five", at: 1)
        print(array)
        array.insert(contentsOf: ["six", "seven"], at: 3)
        print(array)
        
        // 删除
        array.remove(at: 5)
        print(array)
        array.removeSubrange(0...2)
        print(array)
        
        // 替换
        array.replaceSubrange(0...2, with: ["one", "two", "three"])
        print(array)
        
        // 循环遍历
        for index in 0...array.count - 1 {
            print(array[index])
        }
        for str in array {
            print(str)
        }
        for str in 0...2 {
            array1.append(String(str))
            array2.append(str)
        }
        print(array1)
        print(array2)
        
        // 查找
        let bool = array.contains("0")
        print(bool)
        
        // 判断数组是否为空
        print(array.isEmpty)
    }
    
    func testDict() {
        print("****************** dict ******************")
        // 初始化
        var dict = ["key1" : "value1", "key2" : "value2", "key3" : "value3", "key4" : "value4", "key5" : "value5"]
        var dict1 = Dictionary<String , Any>()
        var dict2 = [Int : Any]() // key 不能为Any
        var dict3 = [String : Int]()
        
        print(dict["key1"]!)
        // 改
        dict.updateValue("changeValue1", forKey: "key1")
        print(dict)
        
        // 删
        dict.removeValue(forKey: "key1")
        let index = dict.index(forKey: "key2")
        dict.remove(at: index!)
        print(dict)
        
        // 判断字典是否为空
        print(dict3.isEmpty)
        
        // 增
        dict3.updateValue(1, forKey: "key1")
        print(dict3)
        
        dict2.updateValue(1, forKey: 1)
        print(dict2)
        
        dict1.updateValue(1, forKey: "key1")
        print(dict1)
        
        // 查
        let bool = dict.keys.contains("key1")
        print(bool)
        
        // 遍历
        for key in dict.keys {
            print(key)
        }
        for value in dict.values {
            print(value)
        }
        for element in dict {
            print(element)
        }
    }
    
    // 输出
    func testPrint() {
        print("****************** print ******************")
        let str = "world"
        print("🐱")
        print("haha")
        print("哈哈")
        print("hello, \(str)")
        let 🐱 = "cat"
        let 熊猫 = "🐼"
        print(🐱)
        print(熊猫)
    }
    
    // 条件语句
    func testConditionalStatement() {
        print("****************** if ******************")
        // 判断值
        let str = "haha"
        if str == "haha" {
            print("yes")
        }
        
        // 判断类型
        let tableView = UITableView()
        if tableView.isKind(of: UITableView.self) {
            print("yes")
        }
        
        let string = String()
        /*
         *  判断字符串为空
         *  如果写string == nil 回报警告说这样写返回的永远都是false
         *  Swift里的nil跟OC里的nil是不一样的
         *  OC中的nil指向一个不存在的指针
         *  Swift的nil指向一个不确定的值 如nil 赋值给string1，string1为不确定值，所以String要加?
         */
        if string.isEmpty {
            print("yes")
        } else {
            print("no")
        }
        let string1 : String? = nil
        if string1 == nil {
            print("yes")
        } else {
            print("no")
        }
    }
    
    // 运算符
    func testOperator() {
        print("****************** operator ******************")
        // 二元算数运算
        var add = 1 + 1
        let subtract = 2 - 1
        let multiply = 1 * 2
        let divide1 = 4 / 2 // 取整
        let divide2 = 4 % 2 // 取余
        print("add = \(add) \nsubtract = \(subtract) \nmultiply = \(multiply) \ndivide1 = \(divide1) \ndivide2 = \(divide2)")
        // 二元符合运算
        add += 1
        print(add)
        add -= 1
        print(add)
        add /= 1
        print(add)
        add *= 1
        print(add)
        add %= 1
        print(add)
        
        //报错'++' is not a binary operator，++ -- 不是运算符
        
        // 三元运算
        let result = add > 1 ? true : false
        print(result)
        
        // 恒等运算符
        // === 恒等，即值相等且内存地址相同
        let view1 = UIView()
        let view2 = UIView()
        let view3 = view1
        if view1 === view2 {
            print("view1 恒等于 view2")
        } else {
            print("view1 不恒等于 view2")
            if (view1 === view3) {
                print("view1 恒等于 view3")
            } else {
                print("view1 不恒等于 view3")
            }
        }
        if (view1 !== view2) {
            print("view1 不恒等于 view2")
        }
        
//        for 错误写法 C-style for statement has been removed in Swift 3, 这种写法在Swift3 的时候已经被去除了
//        for var i = 0; i < 10; i ++ {
//
//        }
        
        // 范围运算符
        for i in 1...5 {
            print(i) // 1 - 5
        }
        for i in 1..<5 {
            print(i) // 1 - 4
        }
        
        print("***** ?? *****")
        // ?? 运算符 使用 ?? 运算符类型必须一致，且都是optional
        // 如何定义一个Optional的值？只要在类型名后面加个?就可以了
        let a = "1"
        var b : String?
        print(b ?? a)
        b = "2"
        print(b ?? a)
        // b ?? a 等同于下列三元运算式, 即当b有值时返回b，b无值时返回a
        print(b != nil ? b! : a)
        
        // 由于d是Optional类型。即初始化时不确定有没有值，所以使用d的时候要从Optional中取出d的值，此时需要对d进行显示拆包处理，即在d后面加上！
        // c属于隐式拆包
        let c : String! = "haha"
        print(c)
        let d : String? = "haha"
        print(d!)
        // 不对e赋值时，必须使用var定义 否则没有初始化 也没有赋值，无法使用
//        var e : String?
//        print(e!)
        print(c ?? a)
        
        // 逻辑运算就不多说了，多用于二进制运算，用的不多
    }
}
