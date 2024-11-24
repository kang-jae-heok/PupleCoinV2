// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,]
        productTypes: [:]
    )
#endif

let package = Package(
    name: "PurpleCoinV2",
    dependencies: [
        .package(url: "https://github.com/uber/RIBs.git", from: "0.9.0"),
        .package(url: "https://github.com/layoutBox/FlexLayout.git",.upToNextMajor(from: "1.3.0"))
    ]
)
