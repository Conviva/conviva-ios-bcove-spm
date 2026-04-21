// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaBrightcove",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaBrightcove",
            targets: ["ConvivaBrightcove", "ConvivaSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaBrightcove",
            url: "https://github.com/Conviva/ConvivaBrightcove/releases/download/4.0.33/ConvivaBrightcove.xcframework.zip",
            checksum: "008c8932490a67858844178eef026a05f2b8e9fb1e95995362e3a26e7174e335"),
        
        .binaryTarget(
                name: "ConvivaSDK",
                url: "https://github.com/Conviva/ConvivaSDK/releases/download/4.3.1/ConvivaSDK.xcframework.zip",
                checksum: "0b6c61813c111a42243c85d9e70bf2e17ab68b9b2d0ed533d808adb75b810d88")
     ]
)