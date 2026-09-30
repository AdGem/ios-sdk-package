// swift-tools-version:5.7
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
            url: "https://adgem-framework.s3.amazonaws.com/iOS-3.5.0.zip",
            checksum: "4006c4a1b77f99f6477cf098b35bf5ecbb32072b4b6c3b9ba475f76905517ef3"
        )
    ]
)
