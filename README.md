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

You can add `RegexHelper` to your project from Xcode. Select `File > Swift Packages > Add Package Dependency...`, and paste `https://github.com/swiftyaf/RegexHelper`.

