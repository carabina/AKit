//
//  Validator+Validators.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import Foundation

public extension Validator {
    static let isFilled = Validator {
        guard !$0.isEmpty else {
            throw ValidatorError.isEmpty
        }
    }

    static let isPassword = Validator {
        guard $0.count >= 8 else {
            throw ValidatorError.invalidPassword
        }
    }

    static let isEmail = Validator {
        guard $0.isEmail else {
            throw ValidatorError.invalidEmail
        }
    }
}
