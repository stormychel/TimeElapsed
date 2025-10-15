//
//  TimeElapsed.swift
//  TimeElapsed
//
//  Created by Michel Storms
//

import Foundation

/// A simple object that starts a timer on init . On deinit it reports the time between the two. Also has  .lap function and .stop function.
public class TimeElapsed {
    var start: DispatchTime
    public var name: String
    
    public init(name: String) {
        start = .now()
        self.name = name
    }
    
    public var seconds: Double {
        let elapsed = start.distance(to: .now())
        return elapsed.toSeconds() ?? 0
    }
    
    public var milliseconds: Double {
        let elapsed = start.distance(to: .now()) // UInt64 nanoseconds
        return Double(elapsed) / 1_000_000.0
    }
    
    public func tell(comment: String = "", indent: Bool = false) {
        print(
            (indent ? "\t" : "")
            +
            "END OF \(name) - time elapsed: \(start.distance(to: .now())) "
            +
            (comment)
        )
    }
    
    public func restart() {
        start = .now()
    }
}
