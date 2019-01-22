//
//  UIView+IB.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import UIKit

public extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}
