//
//  ViewController.swift
//  Lesson-04 UILabel
//
//  Created by Adam的Apple on 2024/4/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addLabel()
    }

    func addLabel() {
        //创建UILabel
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        //设置label的文本居中显示
        label.textAlignment = .center
        //设置文本行数，0为自动换行
        label.numberOfLines = 0
        //设置文本的大小是否由label的宽高自适应
        label.adjustsFontSizeToFitWidth = true
        //设置label的字体大小
        label.font = UIFont.systemFont(ofSize: 20)
        //设置label的字体颜色，一行文本显示不同颜色
        let attributeString = NSMutableAttributedString(string: "Hello, world!")
        attributeString.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 0, length: 5))
        attributeString.addAttribute(.foregroundColor, value: UIColor.blue, range: NSRange(location: 7, length: 6))
        label.attributedText = attributeString
        //设置label居中显示
        label.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height/2)
        //添加label到视图中
        view.addSubview(label)
    }
}

