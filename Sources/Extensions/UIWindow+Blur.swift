//
//  UIView+Blur.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import UIKit

public extension UIWindow {
    func addBlur() {
        guard viewWithTag(blurEffectTag) == nil else {
            return
        }

        let blurEffect = UIBlurEffect(style: .dark)

        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.tag = blurEffectTag
        visualEffectView.frame = frame
        visualEffectView.alpha = 0

        addSubview(visualEffectView)

        UIView.animate(withDuration: 0.25, delay: 0.1, animations: {
            visualEffectView.alpha = 1
        })
    }

    func removeBlur() {
        guard let visualEffectView = viewWithTag(blurEffectTag) else {
            return
        }

        UIView.animate(withDuration: 0.1, delay: 0.0, animations: {
            visualEffectView.alpha = 0
        }, completion: { _ in
            visualEffectView.removeFromSuperview()
        })
    }

    // MARK: - Utilities

    private var blurEffectTag: Int {
        return 2_687
    }
}
