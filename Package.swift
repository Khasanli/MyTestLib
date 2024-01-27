// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
// testing
import PackageDescription

let package = Package(
    name: "MyTestLib",
    products: [
        .library(name: "MyTestLib", targets: ["MyTestLib"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "MyTestLib", path: "./Sources/TestLibraryFramework.xcframework"),
    ]
)

