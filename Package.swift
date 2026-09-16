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
            url: "https://adgem-framework.s3.amazonaws.com/iOS-3.4.1.zip",
            checksum: "16c718df9cb62c02f27c5f34fb0849d9a8e55f51f68ba72f16232dc4e5f08d6a"
        )
    ]
)
