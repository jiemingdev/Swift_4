//
//  TestViewController.swift
//  Swift_4
//
//  Created by 周鑫 on 2017/7/11.
//  Copyright © 2017年 周鑫. All rights reserved.
//

import UIKit

let cellId = "cellId"
let collecCellId = "collecCellId"
fileprivate var bgScrollView: UIScrollView?

class TestUIViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "UI"
        self.addBgScrollView()
        
        self.addBtn()
        self.addLabel()
        self.addSwitch()
        self.addSlider()
        self.addStepper()
        self.addTextView()
        self.addImageView()
        self.addTableView()
        self.addTextField()
        self.addScrollView()
        self.addCollectionView()
    }
    
    public func addBgScrollView() {
        // iOS 11 下该方法取代iOS 11 之前的self.automaticallyAdjustsScrollViewInsets 方法
        bgScrollView?.contentInsetAdjustmentBehavior = .never
        bgScrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight))
        bgScrollView?.contentSize = CGSize(width: kScreenWidth, height: 2000)
        self.view.addSubview(bgScrollView!)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(cancelKeyBoard))
        bgScrollView?.addGestureRecognizer(tap)
    }
    
    public func addLabel() {
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 20))
        label.text = "测试label"
        label.font = .systemFont(ofSize: 15)
        label.shadowColor = .black
        label.shadowOffset = CGSize(width: 0.5, height: 0.5)
        label.textColor = .red
        label.textAlignment = .center
        label.layer.cornerRadius = 3.0
        label.layer.borderColor = UIColor.red.cgColor
        label.layer.borderWidth = 1.0
        bgScrollView?.addSubview(label)
    }
    
    public func addBtn() {
        let btn = UIButton(type: UIButtonType.custom)
        btn.frame = CGRect(x: 100, y: 130, width: 40, height: 40)
        btn.addTarget(self, action: #selector(self.test(_:)), for: .touchUpInside)
        btn.layer.borderWidth = 1.0
        btn.layer.borderColor = UIColor.red.cgColor
        btn.layer.cornerRadius = 20
        btn.setTitle("☹", for: .normal)
        btn.setTitleColor(.red, for: .normal)
//        btn.setImage(UIImage(named:"11.jpg"), for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize:15)
        bgScrollView?.addSubview(btn)
    }
    
    public func addScrollView() {
        let scrollView = UIScrollView(frame: CGRect(x: 10, y: 190, width: 300, height: 40))
        scrollView.delegate = self
        scrollView.layer.cornerRadius = 5.0
        scrollView.layer.borderColor = UIColor.red.cgColor
        scrollView.layer.borderWidth = 1.0
        scrollView.contentSize = CGSize(width: 1000, height: 40)
        bgScrollView?.addSubview(scrollView)
    }
    
    public func addImageView() {
        let imageView = UIImageView(frame: CGRect(x: 150, y: 250, width: 200, height: 120))
        imageView.image = UIImage(named:"image1")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5.0
        imageView.layer.borderColor = UIColor.red.cgColor
        imageView.layer.borderWidth = 1.0
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFill
        bgScrollView?.addSubview(imageView)
    }
    
    public func addTableView() {
        let tableView = UITableView(frame: CGRect(x: 10, y: 250, width: 130, height: 120), style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.backgroundColor = .white
        tableView.tableFooterView = UIView(frame: .zero)
        bgScrollView?.addSubview(tableView)
    }
    
    public func addCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 50, height: 50)
        let collectionView = UICollectionView(frame: CGRect(x: 10, y: 390, width: 150, height: 120), collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: collecCellId)
        bgScrollView?.addSubview(collectionView)
    }
    
    public func addTextView() {
        let textView = UITextView(frame: CGRect(x: 180, y: 390, width: 150, height: 120))
        textView.delegate = self
        textView.textColor = .orange
        textView.keyboardType = .numberPad
        textView.layer.cornerRadius = 5.0
        textView.layer.borderColor = UIColor.red.cgColor
        textView.layer.borderWidth = 1.0
        bgScrollView?.addSubview(textView)
    }
    
    public func addTextField() {
        let textField = UITextField(frame: CGRect(x: 10, y: 520, width: 150, height:30))
        textField.delegate = self
        textField.textColor = .orange
        textField.keyboardType = .numberPad
        textField.placeholder = "haha"
        textField.layer.cornerRadius = 3.0
        textField.layer.borderColor = UIColor.red.cgColor
        textField.layer.borderWidth = 1.0
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 30))
        textField.leftView = leftView
        textField.leftViewMode = .always
        bgScrollView?.addSubview(textField)
    }
    
    public func addSwitch() {
        let switchBtn = UISwitch(frame: CGRect(x: 180, y: 520, width: 80, height: 40))
        switchBtn.isOn = true
        switchBtn.onTintColor = .red
        switchBtn.tintColor = .orange
        bgScrollView?.addSubview(switchBtn)
    }
    
    public func addSlider() {
        let slider = UISlider(frame: CGRect(x: 10, y: 580, width: 300, height: 30))
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .orange
        slider.thumbTintColor = .yellow
        // slider 的拖动事件 addTarget 需要添加各种状态的事件，这里就不写了
        bgScrollView?.addSubview(slider)
    }
    
    public func addStepper() {
        let stepper = UIStepper(frame: CGRect(x: 10, y: 650, width: 200, height: 30))
        stepper.minimumValue = 0
        stepper.maximumValue = 100
        stepper.tintColor = .red
        stepper.isContinuous = false // 按住不放 值连续改变
        stepper.autorepeat = true // 该值为true是continue才有效 默认为true
        stepper.addTarget(self, action: #selector(changeStepper(_ :)), for: .valueChanged)
        bgScrollView?.addSubview(stepper)
    }
    
    @objc func test(_ btn: UIButton) {
        btn.isSelected = !btn.isSelected
        if (btn.isSelected) {
            btn.setTitle("☺", for: .normal)
        } else {
            btn.setTitle("☹", for: .normal)
        }
    }
    
    @objc func cancelKeyBoard() {
        UIApplication.shared.keyWindow?.endEditing(true)
    }
    
    @objc func changeStepper(_ step : UIStepper) {
        print(step.value)
    }
}

extension TestUIViewController : UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let scale = scrollView.contentOffset.x / scrollView.contentSize.width
        scrollView.backgroundColor = UIColor.init(colorLiteralRed: Float(255.0 * scale / 255.0), green: Float(0.0 * scale / 255.0), blue: Float(25.0 * scale / 255.0), alpha: 0.5)
    }
}

extension TestUIViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = "row " + String(indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension TestUIViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collecCellId, for: indexPath)
        cell.backgroundColor = UIColor.init(colorLiteralRed: Float(10 * indexPath.item / 255), green: Float(10 * indexPath.item / 255), blue: Float(10 * indexPath.item / 255), alpha: 1.0)
        return cell
    }
}

extension TestUIViewController : UITextFieldDelegate, UITextViewDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        bgScrollView?.setContentOffset(CGPoint(x: 0, y: 290), animated: true)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        bgScrollView?.setContentOffset(CGPoint(x: 0, y: 290), animated: true)
    }
}


