//
//  DateFormatter+DateFormatters.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import Foundation

public extension DateFormatter {
    static var long = DateFormatter(dateFormat: "d. M. yyyy")
    static let short = DateFormatter(dateFormat: "d. M.")
}
