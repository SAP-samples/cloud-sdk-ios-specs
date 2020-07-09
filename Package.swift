// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SAPCPSDK4iOS",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SAPCommon",
            targets: ["SAPCommon"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.

//        .binaryTarget(name: "SAPCommon", path: "/Applications/SAP\ Cloud\ Platform\ SDK\ for\ iOS\ Assistant.app/Contents/Resources/iOSFrameworks/Release-xcframework/SAPCommon.xcframework"),
        .binaryTarget(name: "SAPCommon", url: "https://rbsc.repositories.sap.ondemand.com/nexus3/repository/maven73554900100900004651/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPCommon/5.1.0/SAPCommon-5.1.0-Release-xcframework.zip", checksum: "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"),
    ]
)
