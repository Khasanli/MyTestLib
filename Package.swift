// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
// testing
import PackageDescription

//let package = Package(
//    name: "MyTestLib",
//    products: [
//        .library(name: "MyTestLib", targets: ["MyTestLib"])
//    ],
//    dependencies: [
//    ],
//    targets: [
//        .target(name: "MyTestLib",
//               dependencies: ["TestLibraryFramework"]),
//        .binaryTarget(name: "TestLibraryFramework", path: "./Sources/TestLibraryFramework.xcframework"),
//        
//    ]
//)
//

let package = Package(
    name: "MyTestLib",
    products: [
        .library(
            name: "MyTestLib",
            targets: ["MyTestLib", "TestLibraryFramework"]
        )
    ],
    targets: [
        .target(name: "MyTestLib",
                       dependencies: ["TestLibraryFramework"]),
        .binaryTarget(
            name: "TestLibraryFramework",
            path: "./Sources/TestLibraryFramework.xcframework"
        )
    ]
)
