// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyTestLib",
    products: [
        .library(name: "MyTestLib", targets: ["MyTestLib"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "TestLibraryFramework",
            url: "https://github.com/Khasanli/PackageZip/raw/main/TestLibraryFramework.xcframework.zip",
            checksum: "9a71d8de27dbaa3d081a4932624792103bdfd5b6879e06afe969028cbde6ace3"
        )
    ]
)

