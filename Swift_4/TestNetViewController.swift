//
//  TestNetViewController.swift
//  Swift_4
//
//  Created by 周鑫 on 2017/7/13.
//  Copyright © 2017年 周鑫. All rights reserved.
//

import UIKit

class TestNetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "网络"
        
        
        let label = UILabel(frame: CGRect(x: 10, y: 100, width: kScreenWidth - 20, height: 120))
        label.text = "由于我下的Alamofire4.4 还不适配Swift4.0,所以在另一个过程中写了Alamofire相关内容，不过Alamofire的github demo 已经适配了Swift4.0. 网址如下 \nhttps://github.com/jieming123/Swift_3-"
        label.numberOfLines = 0
        label.textColor = .red
        self.view.addSubview(label)
    }
    
}
