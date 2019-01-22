//
//  TouchableView.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import UIKit

open class TouchableView: NibableView {

    // MARK: - Properties

    public var isHighlighted: Bool = false {
        didSet {
            isHighlighted ? highlight() : unhighlight()
        }
    }

    // MARK: - Touches

    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)

        isHighlighted = true
    }

    override open func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)

        isHighlighted = false
    }

    override open func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)

        // prevents repetitive handler calling
        if areTouches(touches, withinFrameOf: self), !isHighlighted {
            isHighlighted = true
        } else if !areTouches(touches, withinFrameOf: self), isHighlighted {
            isHighlighted = false
        }
    }

    override open func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)

        if areTouches(touches, withinFrameOf: self) {
            tapAction()
        }
        isHighlighted = false
    }

    // MARK: - Actions

    open func highlight() {
    }

    open func unhighlight() {
    }

    open func tapAction() {
    }

    // MARK: - Utilities

    private func areTouches(_ touches: Set<UITouch>, withinFrameOf view: UIView) -> Bool {
        guard let currentTouchLocation = touches.first?.location(in: view) else {
            return false
        }
        return currentTouchLocation.isWithin(frame)
    }
}
