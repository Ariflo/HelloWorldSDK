// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HelloWorldSDK",
    products: [
        .library(
            name: "HelloWorldSDK",
            targets: ["HelloWorldSDK"]),
    ],
    targets: [
        .target(
            name: "HelloWorldSDK",
            dependencies: [],
            path: "Sources/HelloWorldSDK",
            sources: ["src"],
            publicHeadersPath: "include",
            cxxSettings: [
                .headerSearchPath("include"),
                .define("SWIFT_PACKAGE"),
                .unsafeFlags(["-std=c++11"], .when(platforms: [.iOS])),
            ]
        ),
    ]
)
