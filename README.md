# AdGem iOS SDK

AdGem is the industry's fastest growing Reward Monetization Marketplace. We connect advertisers to engaged audiences around the world with a user-centric focus. Our advanced, proprietary technology provides a best-in-class native ad experience to users and drives quality at volume for developers and marketers alike. Our Offerwall is the industry's most rewarding ad unit with effortless integration with multiple options to fit your specific needs, including in-app, mobile web, and desktop.

## Installation

### Swift Package Manager

Add this package to your Xcode project:

1. In Xcode, go to **File > Add Package Dependencies...**
2. Enter the repository URL: `https://github.com/AdGem/ios-sdk-package`
3. Select the version rule (e.g., **Up to Next Major Version**)
4. Click **Add Package**

### Requirements

- iOS 15.0+
- Xcode 14+

## Usage

```swift
import AdGemSdk

// 1. Set the delegate and initialize the SDK as early as possible
//    (e.g. in application(_:didFinishLaunchingWithOptions:)).
//    initialize() does not hit the network.
AdGem.delegate = self
AdGem.initialize(configuration: AdGemConfiguration(appId: "YOUR_APP_ID"))

// 2. Once the player's identity is known, set the player.
//    This triggers the session and makes the offerwall available.
let metadata = AdGemPlayerMetadata.Builder(playerId: "player-123")
    .age(25)
    .build()
AdGem.setPlayer(metadata)

// 3. Show the offerwall.
AdGem.showOfferwall()

// 4. Switch identity at any time by calling setPlayer with a different player ID.
AdGem.setPlayer(
    AdGemPlayerMetadata.Builder(playerId: "player-456").build()
)

// 5. Tear down the SDK on logout or when you need a clean slate.
AdGem.close()
```

## Documentation

For full integration guides and API reference, check our [iOS SDK Integration Guide](https://docs.adgem.com/publisher-support/ios-sdk-integration-guide/).

## License

MIT. See [LICENSE](LICENSE) for details.
