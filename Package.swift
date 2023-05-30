// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HealfeCommon",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "CommonObjects", targets: ["CommonObjects"]),
        .library(name: "CommonExtensions", targets: ["CommonExtensions"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CommonObjects",
            path: "Sources/CommonObjects"
        ),
        .target(
            name: "CommonExtensions",
            dependencies: [
                "CommonObjects"
            ],
            path: "Sources/CommonExtensions"
        )
    ]
)
