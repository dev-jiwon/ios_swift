// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Bootpay",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Bootpay",
            targets: ["Bootpay"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/AFNetworking/AFNetworking.git", from: "4.0.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.6.0"),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", from: "4.0.0"),
        .package(url: "https://github.com/ninjaprox/NVActivityIndicatorView.git", from: "5.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Bootpay",
            dependencies: ["CryptoSwift", "ObjectMapper", "NVActivityIndicatorView"],
            path: "./Bootpay",
            sources: ["./Classes/"]
//            publicHeadersPath: "./"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
