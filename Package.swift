// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterNewick",
    products: [
        .library(name: "TreeSitterNewick", targets: ["TreeSitterNewick"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterNewick",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterNewickTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterNewick",
            ],
            path: "bindings/swift/TreeSitterNewickTests"
        )
    ],
    cLanguageStandard: .c11
)
