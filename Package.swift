// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
// testing
import PackageDescription

import PackageDescription

let package = Package(
    name: "MyTestLib",
    products: [
        // Define 'MyTestLib' as a library product.
        .library(
            name: "MyTestLib",
            targets: ["MyTestLib"]
        ),
        // Also define 'TestLibraryFramework' as a library product if you want it to be importable.
        .library(
            name: "TestLibraryFramework",
            targets: ["TestLibraryFramework"]
        ),
    ],
    dependencies: [
        // List your package dependencies here, if any.
    ],
    targets: [
        // Define the 'MyTestLib' target with 'TestLibraryFramework' as a dependency.
        .target(
            name: "MyTestLib",
            dependencies: ["TestLibraryFramework"]
        ),
        // Define the 'TestLibraryFramework' binary target.
        .binaryTarget(
            name: "TestLibraryFramework",
            path: "./Sources/TestLibraryFramework.xcframework"
        ),
        // If you have tests, define a test target.
        .testTarget(
            name: "MyTestLibTests",
            dependencies: ["MyTestLib"]
        ),
    ]
)
