// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Swift Package: LiushuCore

import PackageDescription;

let package = Package(
    name: "LiushuCore",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "LiushuCore",
            targets: ["LiushuCore"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "RustFramework",
            url: "https://github.com/liushu-project/liushu-core-swift/releases/download/1.0.0/RustFramework.xcframework.zip",
            checksum: "103e498cb0e2f9511e41d65e5e13a90ef32bb8cbbf22687b727f9f4bdbf7bca3"
        ),
        .target(
            name: "LiushuCore",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)
