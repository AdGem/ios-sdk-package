// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AdGem",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "AdGem", targets: ["AdGemSdk"])
    ],
    targets: [
        .binaryTarget(
            name: "AdGemSdk",
            url: "https://adgem-framework.s3.amazonaws.com/iOS-2.4.0.zip",
            checksum: "1cbc21bbbf39464245fc16a14c97bfe8c1572e1d0aab24c04bc210c459093ec8"
        )
    ]
)
