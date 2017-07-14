//
//  ViewController.swift
//  Swift_4
//
//  Created by jieming on 2017/7/10.
//  Copyright © 2017 jieming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "Swift"
        
        let ui_btn = UIButton(type: .custom)
        ui_btn.frame = CGRect(x: 100, y: 100, width: kScreenWidth - 200, height: 30)
        ui_btn.addTarget(self, action: #selector(gotoUICtrl), for: .touchUpInside)
        ui_btn.setTitle("UI", for: .normal)
        ui_btn.setTitleColor(.red, for: .normal)
        ui_btn.layer.cornerRadius = 5.0
        ui_btn.layer.borderColor = UIColor.red.cgColor
        ui_btn.layer.borderWidth = 1.0
        self.view.addSubview(ui_btn)
        
        let grammar_btn = UIButton(type: .custom)
        grammar_btn.frame = CGRect(x: 100, y: 150, width: kScreenWidth - 200, height: 30)
        grammar_btn.addTarget(self, action: #selector(gotoGrammarCtrl), for: .touchUpInside)
        grammar_btn.setTitle("Grammar", for: .normal)
        grammar_btn.setTitleColor(.red, for: .normal)
        grammar_btn.layer.cornerRadius = 5.0
        grammar_btn.layer.borderColor = UIColor.red.cgColor
        grammar_btn.layer.borderWidth = 1.0
        self.view.addSubview(grammar_btn)
        
        let alamofire_btn = UIButton(type: .custom)
        alamofire_btn.frame = CGRect(x: 100, y: 200, width: kScreenWidth - 200, height: 30)
        alamofire_btn.addTarget(self, action: #selector(gotoAlamofireCtrl), for: .touchUpInside)
        alamofire_btn.setTitle("Alamofire", for: .normal)
        alamofire_btn.setTitleColor(.red, for: .normal)
        alamofire_btn.layer.cornerRadius = 5.0
        alamofire_btn.layer.borderColor = UIColor.red.cgColor
        alamofire_btn.layer.borderWidth = 1.0
        self.view.addSubview(alamofire_btn)
    }
    
    @objc func gotoUICtrl() {
        let ui_ctrl = TestUIViewController()
        self.navigationController?.pushViewController(ui_ctrl, animated: true)
    }
    
    @objc func gotoGrammarCtrl() {
        let grammar_ctrl = TestGrammarViewController()
        self.navigationController?.pushViewController(grammar_ctrl, animated: true)
    }
    
    @objc func gotoAlamofireCtrl() {
        let alamofire_ctrl = TestNetViewController()
        self.navigationController?.pushViewController(alamofire_ctrl, animated: true)
    }
}

