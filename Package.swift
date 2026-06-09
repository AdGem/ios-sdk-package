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
            url: "https://adgem-framework.s3.amazonaws.com/iOS-2.4.1.zip",
            checksum: "02ce8fcb168f8fedc0f09d430d0fde18e22966850cff6c4d04a247c136efd3e3"
        )
    ]
)
