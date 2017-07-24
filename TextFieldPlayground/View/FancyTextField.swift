//
//  FancyTextField.swift
//  TextFieldPlayground
//
//  Created by Kyle Melton on 7/23/17.
//  Copyright © 2017 Kyle Melton. All rights reserved.
//

import UIKit

class FancyTextField: UITextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        styleTextField()
    }
    
    private func styleTextField() {
        let neon = UIColor(colorLiteralRed: 42/255, green: 250/255, blue: 56/255, alpha: 1)
        let border = CALayer()
        let width = CGFloat(2.0)
        
        border.borderColor = neon.cgColor
        border.borderWidth = width
        border.frame = CGRect(x: 0, y: bounds.size.height - width, width: bounds.size.width, height: bounds.size.height)
        
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }

}
