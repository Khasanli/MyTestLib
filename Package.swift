// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyTestLib",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyTestLib",
            targets: ["MyTestLib"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyTestLib"),
        .binaryTarget(
                   name: "TestLibraryFramework",
                   url: "https://github.com/Khasanli/PackageZip/raw/main/TestLibraryFramework.xcframework.zip",
                   checksum: "9a71d8de27dbaa3d081a4932624792103bdfd5b6879e06afe969028cbde6ace3"
               ),
        .testTarget(
            name: "MyTestLibTests",
            dependencies: ["MyTestLib"]),
    ]
)
