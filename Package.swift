// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sap-cloud-sdk-ios",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SAPCommon",
            targets: ["SAPCommon"]),
        .library(
            name: "SAPFoundation",
            targets: ["SAPFoundation"]),
        .library(
            name: "SAPFiori",
            targets: ["SAPFiori"]),
        
        .library(
            name: "SAPFioriFlows",
            targets: ["SAPFioriFlows"]),
        .library(
            name: "SAPOData",
            targets: ["SAPOData"]),
        .library(
            name: "SAPOfflineOData",
            targets: ["SAPOfflineOData"]),
        .library(
        name: "SAPML",
        targets: ["SAPML"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        
        //        .binaryTarget(name: "SAPCommon", path: "/Applications/SAP\ Cloud\ Platform\ SDK\ for\ iOS\ Assistant.app/Contents/Resources/iOSFrameworks/Release-xcframework/SAPCommon.xcframework"),
        .binaryTarget(name: "SAPCommon", url: "https://rbsc.repositories.sap.ondemand.com/nexus3/repository/maven73554900100900004651/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPCommon/5.1.0/SAPCommon-5.1.0-Release-xcframework.zip", checksum: "e54b8ca7b318943d67c212f9f34eb853ae5ab27a07255a3e992d3757ebe1ad82"),
        .binaryTarget(name: "SAPFoundation", url: "https://rbsc.repositories.sap.ondemand.com/nexus3/repository/maven73554900100900004651/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPFoundation/5.1.0/SAPFoundation-5.1.0-Release-xcframework.zip", checksum: "60aa7a644b980b705a20cfde3e1e3c10c9a238a58a62b7ae8c89cda12bfbdd2f"),
        .binaryTarget(name: "SAPFiori", url: "https://rbsc.repositories.sap.ondemand.com/nexus3/repository/maven73554900100900004651/com/sap/mobile/platform/client/hcp/sdk/ios/uireuse/SAPFiori/5.1.0/SAPFiori-5.1.0-Release-xcframework.zip", checksum: "47808b21177e4fcec9a8a6136f75cb33417025d522d9626ba644563517e2cfdb"),
        .binaryTarget(name: "SAPFioriFlows", url: "https://rbsc.repositories.sap.ondemand.com/nexus3/repository/maven73554900100900004651/com/sap/mobile/platform/client/hcp/sdk/ios/flows/SAPFioriFlows/5.1.0/SAPFioriFlows-5.1.0-Release-xcframework.zip", checksum: "e8f086311011d5c2c9195b139d8d2e7a30e0e9b4bfc6e74a13805c6aad276e59"),
        .binaryTarget(name: "SAPOData", url: "https://rbsc.repositories.sap.ondemand.com/nexus3/repository/maven73554900100900004651/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPOData/5.1.0/SAPOData-5.1.0-Release-xcframework.zip", checksum: "9c5db073653b22cf13dafc571dbbe5506d2c937dd23a6f6eeae17f428c614169"),
        .binaryTarget(name: "SAPOfflineOData", url: "https://rbsc.repositories.sap.ondemand.com/nexus3/repository/maven73554900100900004651/com/sap/mobile/platform/client/hcp/sdk/ios/foundation/SAPOfflineOData/5.1.0/SAPOfflineOData-5.1.0-Release-xcframework.zip", checksum: "85944628378f1173fbfb6a6cfce740ebbc4b45a345562bf00e76e84275168ad7"),
        .binaryTarget(name: "SAPML", url: "https://rbsc.repositories.sap.ondemand.com/nexus3/repository/maven73554900100900004651/com/sap/mobile/platform/client/hcp/sdk/ios/uireuse/SAPML/5.1.0/SAPML-5.1.0-Release-xcframework.zip", checksum: "1e1190f4ddcd61b1223340e060ae50699c9639a63739eeb3a41a0c8dfac1b09e")
    ]
)
