Pod::Spec.new do |s|
  s.name = 'CircleProgrammableWalletSDK'
  s.version = '1.0.15'
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

  s.ios.vendored_frameworks = 'Source/*.xcframework'
  s.resources = 'Resources/*.bundle'

  # Dependency
  s.dependency 'Alamofire', '5.9.0'
  s.dependency 'DeviceKit', '5.2.0'
  s.dependency 'SDWebImage', '5.18.10'
  s.dependency 'IQKeyboardManagerSwift', '7.0.1'
  s.dependency 'SnapKit', '5.7.1'

end
