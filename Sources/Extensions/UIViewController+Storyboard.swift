//
//  UIViewController+Storyboard.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import UIKit

public extension UIViewController {

    // MARK: - Properties

    private static var storyboardName: String {
        return String(describing: self).replacingOccurrences(of: "ViewController", with: "")
    }

    private static var controllerId: String {
        return String(describing: self) + "ID"
    }

    private static var storyboard: UIStoryboard {
        return UIStoryboard(name: storyboardName, bundle: nil)
    }

    // MARK: - Actions

    static func instantiateFromStoryboard<T>() -> T {
        if let viewController = storyboard.instantiateViewController(withIdentifier: controllerId) as? T {
            return viewController
        } else {
            fatalError(
                """
                "Unable to instantiate view controller from storyboard!\n
                view controller: \(String(describing: self))\n
                storyboard name: \(storyboardName),\n
                storyboard id: \(controllerId)"
                """
            )
        }
    }
}
