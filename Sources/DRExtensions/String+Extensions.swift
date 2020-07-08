//
//  String+Helpers.swift
//  Direct
//
//  Created by Matt Tancock on 06/12/2019.
//

import Foundation

extension String {
    /// Returns a Boolean value indicating whether the initial elements of the
    /// sequence are equivalent to the elements in another sequence.
    /// - Parameter prefix: The string to search for
    /// - Parameter options: Specify any search options
    public func starts(with prefix: String, options mask: String.CompareOptions) -> Bool {
        var compareOptions = mask
        compareOptions.insert(.anchored)
        return self.range(of: prefix, options: compareOptions) != nil
    }
}
