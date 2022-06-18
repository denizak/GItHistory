// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GitHistory",
    products: [
        .plugin(name: "GitHistory", targets: ["GitHistory"]),
    ],
    targets: [
        .plugin(name: "GitHistory", capability: .buildTool()),
    ]
)
