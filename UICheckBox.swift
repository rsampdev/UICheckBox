//
//  UICheckBox.swift
//
//  Created by Rodney Sampson.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import UIKit

class UICheckBox: UIButton {
    
    private let unchecked = "☐"
    private let checked = "☑︎"
    
    private var isChecked: Bool = false {
        didSet {
            if isChecked {
                self.setTitle(checked, for: .normal)
            } else {
                self.setTitle(unchecked, for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.isChecked = false
        self.addTarget(self, action: #selector(buttonClicked(sender:)), for: UIControlEvents.touchUpInside)
    }
    
    func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
    
}
