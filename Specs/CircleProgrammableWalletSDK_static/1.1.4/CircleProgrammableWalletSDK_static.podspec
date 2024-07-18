Pod::Spec.new do |s|
  s.name = 'CircleProgrammableWalletSDK_static'
  s.version = '1.1.4'
  s.license = 'Apache License, Version 2.0'
  s.summary = 'CircleProgrammableWalletSDK for iOS.'
  s.homepage = 'https://www.circle.com/web3-services'
  s.author = 'CIRCLE'
  s.source = { :git => "https://github.com/circlefin/w3s-ios-sdk.git",
               :tag => s.version }

  s.platform = :ios, '13.0'
  s.swift_versions = ['5']

  # Ensure developers won't hit CocoaPods/CocoaPods#11402 with the resource
  # bundle for the privacy manifest.
  s.cocoapods_version = '>= 1.12.0'

  s.ios.vendored_frameworks = 'Source/static/CircleProgrammableWalletSDK.xcframework'
  s.resources = 'Resources/*.bundle'
  
  s.static_framework = true

  # Dependency
  s.dependency 'GoogleSignIn', '7.1.0'
  s.dependency 'FBSDKLoginKit', '17.0.2'

end
