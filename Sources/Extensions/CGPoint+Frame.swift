//
//  CGPoint+Frame.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import CoreGraphics

public extension CGPoint {
    func isWithin(_ frame: CGRect) -> Bool {
        return 0...frame.width ~= x && 0...frame.height ~= y
    }
}

