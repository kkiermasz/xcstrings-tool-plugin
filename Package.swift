// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
    name: "XCStringsToolPlugin",
    products: [
        .plugin(name: "XCStringsToolPlugin", targets: ["XCStringsToolPlugin"])
    ],
    targets: [
        .plugin(
            name: "XCStringsToolPlugin",
            capability: .buildTool(),
            dependencies: [
                .target(name: "xcstrings-tool")
            ]
        ),
        .binaryTarget(
            name: "xcstrings-tool",
            url: "https://github.com/kkiermasz/xcstrings-tool/releases/download/v0.1.3/xcstrings-tool.artifactbundle.zip",
            checksum: "b23f270497d70c2abd710239589d63e74d0283a9af6a9695b6fa5fced1ce8510"
        )
    ]
)
