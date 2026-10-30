// swift-tools-version: 5.9
// Open this folder in Xcode, pick an iPhone simulator, and press Run.
import PackageDescription
import AppleProductTypes

let package = Package(
    name: "PalindromeApp",
    platforms: [.iOS("17.0")],
    products: [
        .iOSApplication(
            name: "PalindromeApp",
            targets: ["AppModule"],
            bundleIdentifier: "com.arka.PalindromeApp",
            teamIdentifier: "",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .magicWand),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [.pad, .phone],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad])),
            ]
        ),
    ],
    dependencies: [
        .package(path: "../HelloSwift"),
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [.product(name: "StringTools", package: "HelloSwift")]
        ),
    ]
)
