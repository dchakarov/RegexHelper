// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RegexHelper",
    products: [
        .library(
            name: "RegexHelper",
            targets: ["RegexHelper"]),
    ],
    targets: [
        .target(
            name: "RegexHelper",
            dependencies: []),
        .testTarget(
            name: "RegexHelperTests",
            dependencies: ["RegexHelper"]),
    ]
)
