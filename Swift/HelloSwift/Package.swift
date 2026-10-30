// swift-tools-version: 6.4
import PackageDescription

let package = Package(
    name: "HelloSwift",
    products: [
        // Exposed so the iOS app (../PalindromeApp.swiftpm) can use it.
        .library(name: "StringTools", targets: ["StringTools"]),
    ],
    targets: [
        // Reusable logic lives in a library so it can be tested.
        .target(name: "StringTools"),
        // Thin command-line front end.
        .executableTarget(name: "HelloSwift", dependencies: ["StringTools"]),
        .testTarget(name: "StringToolsTests", dependencies: ["StringTools"]),
    ]
)
