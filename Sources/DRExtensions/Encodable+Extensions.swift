//
//  Encodable+Extensions.swift
//  MoneyWell
//
//  Created by Matt on 11/07/2019.
//  Copyright © 2019 Diligent Robot. All rights reserved.
//

import Foundation

extension Encodable {
    public func jsonEncodedData() throws ->  Data {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try encoder.encode(self)
        return data
    }
}
