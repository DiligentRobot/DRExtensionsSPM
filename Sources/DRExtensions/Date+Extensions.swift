//
//  Date+OFX.swift
//  Direct
//
//  Created by Scotty on 18/03/2020.
//

import Foundation

/// The possible date formats that an OFX file can contain.
private let formats = [
    "YYYYMMDDhhmmss.XXX[ZZ:zzz]",
    "YYYYMMDDhhmmss.XXX",
    "YYYYMMDDhhmmss[ZZ:zzz]",
    "YYYYMMDDhhmmss",
    "YYYYMMDDHHmmss.XXX[ZZ:zzz]",
    "YYYYMMDDHHmmss.XXX",
    "YYYYMMDDHHmmss[ZZ:zzz]",
    "YYYYMMDDHHmmss",
    "YYYYMMDD[ZZ:zzz]",
    "YYYYMMDD"
]

extension Date {

    public static func date(string: String) -> Date? {
        let stringToProcess = string.trimmingCharacters(in: .whitespacesAndNewlines)
        guard stringToProcess != "" else { return nil }

        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")

        var returnDate: Date?

        for format in formats {
            formatter.dateFormat = format
            if let dte = formatter.date(from: stringToProcess) {
                returnDate = dte
                break
            }
        }
        return returnDate
    }
}
