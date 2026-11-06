# VoodooMaxAdapter

AppLovin MAX mediation adapter for the Voodoo Adn SDK.

## Installation

### Swift Package Manager

Pick a version from the [Releases](https://github.com/VoodooADN/ios-applovin-adapter-swiftpackage/releases) page and pin it.

In Xcode: **File > Add Package Dependencies…**, enter `https://github.com/VoodooADN/ios-applovin-adapter-swiftpackage.git`, set the dependency rule to **Exact Version**, and add the `VoodooMaxAdapter` product to your app target.

In a `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/VoodooADN/ios-applovin-adapter-swiftpackage.git", exact: "<version>")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "VoodooMaxAdapter", package: "ios-applovin-adapter-swiftpackage")
        ]
    )
]
```

The adapter brings the [Voodoo Adn SDK](https://github.com/VoodooADN/ios-sdk-swiftpackage) at the matching version and the AppLovin MAX SDK: you do not need to add them yourself. If your app also depends on the Voodoo Adn package directly, pin it to the same version as the adapter.

### Versions

Adapter `X.Y.Z` is built for Voodoo Adn `X.Y.Z`. The CocoaPods pod of the same release is `X.Y.Z.1`.
