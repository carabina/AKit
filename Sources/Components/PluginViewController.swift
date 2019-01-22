//
//  PluginViewController.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import UIKit

/// Plugable helps to better structure your code and split various states of view controller into more child controllers.
/// Each child controller represents one state.
///
/// The original idea of child controllers as plugins was published by John Sundell at his blog.
/// https://www.swiftbysundell.com/posts/using-child-view-controllers-as-plugins-in-swift
public protocol Plugable {
    associatedtype State

    var state: State { get set }
    func update(state: State)
}
