//
//  String+Utilities.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import Foundation

public extension String {
    var isEmail: Bool {
        let argumentsList = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", argumentsList)

        return emailPredicate.evaluate(with: self)
    }
}
