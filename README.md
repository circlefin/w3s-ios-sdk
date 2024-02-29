# w3s-ios-sdk

## Installation

### CocoaPods

To integrate ProgrammableWalletSDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```shell
source 'https://github.com/CocoaPods/Specs.git'

pod 'CircleProgrammableWalletSDK'
```

The Podfile setup from the Sample App.

```shell
source 'https://github.com/circlefin/w3s-ios-sdk.git'
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '13.0'

target 'w3s-ios-sample-app-wallets' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Applicable before CircleProgrammableWalletSDK version 1.0.12
  # use_frameworks! :linkage => :static

  pod 'CircleProgrammableWalletSDK'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'

      # See this: https://developer.apple.com/forums/thread/725300
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
    end
  end
end
```

> Please refer to the [Sample App](https://github.com/circlefin/w3s-ios-sample-app-wallets) to see more details.
