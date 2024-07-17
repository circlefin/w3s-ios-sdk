# w3s-ios-sdk

## Installation

### CocoaPods

To integrate ProgrammableWalletSDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```shell
source 'https://github.com/circlefin/w3s-ios-sdk.git'

pod 'CircleProgrammableWalletSDK'

# Support statlic link SDK after version 1.1.3
# If you want to use it, please use the following pod name
# pod 'CircleProgrammableWalletSDK_static'
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

  # Support statlic link SDK after version 1.1.3
  # If you want to use it, please use the following pod name
  # pod 'CircleProgrammableWalletSDK_static'

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

# Support statlic link SDK after version 1.1.3
# If you want to use the pod 'CircleProgrammableWalletSDK_static' and static frameworks "use_frameworks! :linkage => :static"
# Please uncomment the following lines
#
#dynamic_frameworks = ['GoogleSignIn','FBSDKLoginKit', 'AppAuth', 'GTMAppAuth', 'GTMSessionFetcher']
#
#pre_install do |installer|
#  installer.pod_targets.each do |target|
#    if dynamic_frameworks.include?(target.name)
#      def target.build_type
#        Pod::BuildType.dynamic_framework
#      end
#    end
#  end
#end
```

> Please refer to the [Sample App](https://github.com/circlefin/w3s-ios-sample-app-wallets) to see more details.
