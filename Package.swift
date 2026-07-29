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
            url: "https://adgem-framework.s3.amazonaws.com/iOS-3.0.0.zip",
            checksum: "2e561c00bf7a86e6b22e2b7c67a150b4bfebb01d7909ffa87c354f2adabfce71"
        )
    ]
)
