//
//  Validator+Errors.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import Foundation

public enum ValidatorError: Error {
    case isEmpty
    case invalidPassword
    case invalidEmail
}

extension ValidatorError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidEmail:
            return NSLocalizedString("ValidatorError.email", comment: "Email is not valid.")
        case .invalidPassword:
            return NSLocalizedString("ValidatorError.password", comment: "Password has to be at least 8 characters long.")
        case .isEmpty:
            return NSLocalizedString("ValidatorError.isEmpty", comment: "Some of the required fields is empty.")
        }
    }
}
