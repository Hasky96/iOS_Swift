//
//  RoundButton.swift
//  Calculator
//
//  Created by Haseok Jang on 2023/08/15.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet{
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
}
