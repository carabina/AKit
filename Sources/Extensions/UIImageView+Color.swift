//
//  UIImageView+Color.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import UIKit

extension UIImageView {
    @IBInspectable var imageColor: UIColor {
        get {
            return tintColor
        }
        set {
            image = image?.withRenderingMode(.alwaysTemplate)
            tintColor = imageColor
        }
    }
}
