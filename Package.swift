// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: Constants.adapterName,
    platforms: [.iOS("14.0")],
    products: [
        .library(
            name: Constants.adapterName,
            targets: [Constants.adapterName])
    ],
    dependencies: [
        // The adapter is built against this exact SDK version and ships with it.
        .package(url: Constants.sdkPackageURL, exact: Constants.sdkVersion),
        .package(url: Constants.appLovinPackageURL, .upToNextMajor(from: Constants.appLovinMinimumVersion))
    ],
    targets: [
        .target(
            name: Constants.adapterName,
            dependencies: [
                .product(name: "VoodooAdn", package: Constants.sdkPackageName),
                // The 4.30.1 SDK package does not bring OMSDK with its VoodooAdn
                // product, which loads it at launch.
                .product(name: "OMSDK_Voodooio", package: Constants.sdkPackageName),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ]
        )
    ]
)

enum Constants {
    static var adapterName: String { "VoodooMaxAdapter" }
    static var sdkPackageURL: String { "https://github.com/VoodooADN/ios-sdk-swiftpackage.git" }
    static var sdkPackageName: String { "ios-sdk-swiftpackage" }
    static var sdkVersion: Version { "4.30.1" }
    static var appLovinPackageURL: String { "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git" }
    static var appLovinMinimumVersion: Version { "13.0.0" }
}
