//
//  SwiftExtensions.swift
//  TimeElapsed
//
//  Created by Michel Storms
//

import Foundation

extension DispatchTimeInterval {
    /// Convert DispatchTimeInterval to seconds
    func toSeconds() -> Double? {
        var result: Double? = 0

        switch self {
        case .seconds(let value):
            result = Double(value)
        case .milliseconds(let value):
            result = Double(value)*0.001
        case .microseconds(let value):
            result = Double(value)*0.000001
        case .nanoseconds(let value):
            result = Double(value)*0.000000001
        case .never:
            result = nil
        @unknown default:
            print("DispatchTimeInterval.toDouble() - @unknown default")
            
            result = 0
        }

        return result
    }
}
