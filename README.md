# RegexHelper

RegexHelper is a simple wrapper for using regular expressions to extract data from strings in Swift. This is not a full-blown implementation, but rather a simple tool to cover basic use cases. For more examples of usage check the unit tests included.

## Usage

```swift
    let helper = RegexHelper(pattern: #"\[(\d+)\]\D+(\d+)"#)
    let inputString = "mem[56248] = 21501"
    let result = helper.parse(inputString)
    print(result[0]) // 56248
    print(result[1]) // 21501
```

## Adding `RegexHelper` as a Dependency

To use the `RegexHelper` library in a SwiftPM project, 
add the following line to the dependencies in your `Package.swift` file:

```swift
.package(url: "https://github.com/swiftyaf/RegexHelper", .upToNextMinor(from: "0.1.0")),
```

Finally, include `"RegexHelper"` as a dependency for your executable target:

```swift
let package = Package(
    // name, platforms, products, etc.
    dependencies: [
        .package(url: "https://github.com/swiftyaf/RegexHelper", from: "0.1.0"),
        // other dependencies
    ],
    targets: [
        .target(name: "<target-name>", dependencies: [
            .product(name: "RegexHelper", package: "RegexHelper"),
        ]),
        // other targets
    ]
)
```
Alternatively, you can add it from Xcode. Select `File > Swift Packages > Add Package Dependency...`, and paste `https://github.com/swiftyaf/RegexHelper`.

