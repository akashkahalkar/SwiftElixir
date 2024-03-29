// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftElixir",
    platforms: [
            .macOS(.v11),
            .iOS(.v14)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftElixir", targets: ["Extensions", "NetworkUtilities"]),
    ],
    targets: [
        .target(name: "Extensions"),
        .testTarget(name: "SwiftElixirExtensionTest", dependencies: ["Extensions"]),
        .target(name: "NetworkUtilities",
                path: "Sources/Utilities/")
    ]
)
