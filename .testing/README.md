Requires [XcodeGen](https://github.com/yonaskolb/XcodeGen), [CocoaPods](https://cocoapods.org/) and [credentials to download binary frameworks from SAP RSBC](https://github.com/SAP-samples/cloud-sdk-ios-specs#installing-credential)

Change SDK and iOS version in `Podfile` and `project.yml` as needed for your local testing

Run:
- `xcodegen generate`
- `pod install`
- `xcodebuild -workspace TestApp.xcworkspace -scheme 'TestApp' -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 11' clean build`