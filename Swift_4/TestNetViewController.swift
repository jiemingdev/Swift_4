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
        
        let label = UILabel(frame: CGRect(x: 10, y: 100, width: kScreenWidth - 20, height: 100))
        label.text = "在另一个工程里"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .red
        self.view.addSubview(label)
    }

    func testAlamofire() {
    }
}
