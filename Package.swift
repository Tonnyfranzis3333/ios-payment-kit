// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ios-payment-kit",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "ios-payment-kit",
            targets: ["ios-payment-kit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.1"),
    ],
    targets: [
        .target(
            name: "ios-payment-kit",
            dependencies: ["Alamofire"],
            resources: [
                .process("Assets.xcassets") // Include your Assets.xcassets catalog here
            ]
        ),
    ]
)
