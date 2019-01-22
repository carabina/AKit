//
//  Validator.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import Foundation

public struct Validator {

    // MARK: - Types

    public typealias ValidatorHandler = (String) throws -> Void

    // MARK: - Properties

    private let block: ValidatorHandler

    // MARK: - Initialization

    public init(block: @escaping ValidatorHandler) {
        self.block = block
    }

    // MARK: - Actions

    public func validate(_ value: String) throws {
        return try block(value)
    }
}
