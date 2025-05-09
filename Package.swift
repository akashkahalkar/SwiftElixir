// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftElixir",
    platforms: [
            .macOS(.v13),
            .iOS(.v14)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftElixir", targets: ["Extensions", "NetworkUtilities"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ordo-one/package-benchmark", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(name: "Extensions"),
        .testTarget(name: "SwiftElixirExtensionTest", dependencies: ["Extensions"]),
        .target(name: "NetworkUtilities",
                path: "Sources/Utilities/")
    ]
)

// Benchmark of MyNewBenchmarkTarget
package.targets += [
    .executableTarget(
        name: "MyNewBenchmarkTarget",
        dependencies: [
            .product(name: "Benchmark", package: "package-benchmark"),
        ],
        path: "Benchmarks/MyNewBenchmarkTarget",
        plugins: [
            .plugin(name: "BenchmarkPlugin", package: "package-benchmark")
        ]
    ),
]
