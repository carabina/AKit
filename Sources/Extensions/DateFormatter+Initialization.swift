//
//  DateFormatter+Initialization.swift
//  AKit
//
//  Created by Adam Leitgeb on 18/01/2019.
//

import Foundation

extension DateFormatter {
    convenience init(dateFormat: String) {
        self.init()

        self.dateFormat = dateFormat
    }
}
