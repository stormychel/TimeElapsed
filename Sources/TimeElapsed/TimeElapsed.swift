// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/// A simple object that starts a timer on init . On deinit it reports the time between the two. Also has  .lap function and .stop function.
public class TimeElapsed {
    var start: DispatchTime
    var name: String
    
    public init(name: String) {
        start = .now()
        self.name = name
    }
    
    var seconds: Double {
        let elapsed = start.distance(to: .now())
        return elapsed.toSeconds() ?? 0
    }
    
    func tell(comment: String = "", indent: Bool = false) {
        print(
            (indent ? "\t" : "")
            +
            "END OF \(name) - time elapsed: \(start.distance(to: .now())) "
            +
            (comment)
        )
    }
    
    func restart() {
        start = .now()
    }
}
