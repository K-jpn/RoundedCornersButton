//
//  RoundedCornersButton.swift
//  RoundedCornersButton
//
//  Created by keisuke on 11/25/15.
//  Copyright © 2015 keisuke. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCornersButton: UIButton
{
    @IBInspectable
    var cornerRadius: CGFloat = 0.0
    @IBInspectable
    var borderColor: UIColor = UIColor.clearColor()
    @IBInspectable
    var borderWidth: CGFloat = 0.0
    
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        layer.cornerRadius = cornerRadius
        clipsToBounds = (cornerRadius > 0)
        layer.borderColor = borderColor.CGColor
        layer.borderWidth = borderWidth
    }

}
