# TimeElapsed

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A simple class that helps with performance-testing Swift code.

## Features

- seconds(): get time in seconds from init()
- tell(): detailed timing info printed to console
- restart(): restart timer

## Installation

Swift Package manager is your friend.

## Initialization

```swift
import TimeElapsed

let elapsed = TimeElapsed(name: "A NAME BY WHICH TO IDENTIFY YOUR TIMER")
```

## Usage

Get the amount of time running in seconds:

```swift
let seconds = elapsed.seconds
```

Print timing info to console:

```swift
elapsed.tell()
```

Restart timer:

```swift
elapsed.restart()
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome in the shape of Pull Requests.

## Contact

https://www.michelstorms.com
