//
//  ErrorModel.swift
//  DemoTableview
//
//  Created by admin on 10/28/20.
//

import Foundation

struct ErrorModel: Codable, LocalizedError{
    let reason: String
    var errorDescription: String? { return reason }
}
