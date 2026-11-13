// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "AdGem",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "AdGem", targets: ["AdGemSdk"])
    ],
    targets: [
        .binaryTarget(
            name: "AdGemSdk",
            url: "https://adgem-framework.s3.amazonaws.com/iOS-3.6.0.zip",
            checksum: "f8da7f38d8c87e8e776d76c1a2066393ba872b4788c1a3e24c7cb4f78e37ec09"
        )
    ]
)
