//
//  NumberFormatter+Extension.swift
//  MoneyWell
//
//  Created by Sam Staples on 13/08/2019.
//  Copyright © 2019 Diligent Robot. All rights reserved.
//

import Foundation

extension NumberFormatter {
    public static let currencyStandard: NumberFormatter = {
        let currencyFormatter = NumberFormatter()

        // Currency Formatter
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        // Currency Formatter Locale Identifier
        // localize to your grouping and decimal separator
        currencyFormatter.locale = Locale.current

        return currencyFormatter
    }()
}
