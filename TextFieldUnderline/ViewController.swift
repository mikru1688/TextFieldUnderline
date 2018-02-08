//
//  ViewController.swift
//  TextFieldUnderline
//
//  Created by Frank.Chen on 2018/2/7.
//  Copyright © 2018年 frank.chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var underLineViews: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
    
    /// 將正在輸入的 TextField 的底線切換成灰色
    ///
    /// - Parameter tag: _
    func switchUnderlineColor(withTag tag: Int, withIsInput isInput: Bool) {
        for underline in self.underLineViews {
            if underline.tag == tag {
                underline.backgroundColor = isInput ? UIColor.lightGray : UIColor.orange
                break
            }
        }
    }

}

extension ViewController: UITextFieldDelegate {
    
    /// 開始輸入
    ///
    /// - Parameter textField: _
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.switchUnderlineColor(withTag: textField.tag, withIsInput: true)
    }
    
    /// 結束輸入
    ///
    /// - Parameter textField: _
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.switchUnderlineColor(withTag: textField.tag, withIsInput: false)
    }
}
