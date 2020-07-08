//
//  DateFormatter+Extension.swift
//  MoneyWell-iOS
//
//  Created by Sam Staples on 15/08/2019.
//  Copyright © 2019 Diligent Robot. All rights reserved.
//

import Foundation

extension DateFormatter {
    public static let shortDate: DateFormatter = {
        let dateFormatter = DateFormatter()
        // Date Formatter pattern setter (Should set to locale based pattern)
        dateFormatter.dateFormat = "dd/MM"
        return dateFormatter
    }()

    public static let longMonth: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter
    }()

    public static let longDate: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy"
        return dateFormatter
    }()

    public static let longFormatUSPOSIX: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZ"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        return dateFormatter
    }()
}
