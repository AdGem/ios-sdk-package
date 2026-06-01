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

- iOS 12.0+
- Xcode 14+

## Configuration

Add your AdGem App ID to your app's `Info.plist`:

```xml
<key>AdGemAppID</key>
<integer>YOUR_APP_ID</integer>
```

> **Note:** `AdGemAppID` must be an integer, not a string.

## Usage

```swift
import AdGemSdk

// Set player metadata
let metadata = AdGemPlayerMetadata.Builder
    .initWithPlayerId(playerId: "player-123")
    .playerAge(age: 25)
    .build()
AdGem.setPlayerMetaData(metaData: metadata)

// Set delegate to receive callbacks
AdGem.delegate = self

// Show the offerwall
AdGem.showOfferwall()
```

## Documentation

For full integration guides and API reference, check our [iOS SDK Integration Guide](https://docs.adgem.com/publisher-support/ios-sdk-integration-guide/).

## License

MIT. See [LICENSE](LICENSE) for details.
