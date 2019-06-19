// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Martlet",
    products: [
        .library(name: "Martlet", targets: ["Martlet"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Martlet", dependencies: []),
        .testTarget(name: "MartletTests", dependencies: ["Martlet"]),
    ]
)
