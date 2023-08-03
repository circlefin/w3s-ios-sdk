Pod::Spec.new do |s|
  s.name         = "CircleProgrammableWalletSDK"
  s.version      = "1.0.3"
  s.summary      = "CircleProgrammableWalletSDK for iOS."
  s.description  = "CircleProgrammableWalletSDK for iOS."

  s.homepage     = "https://www.circle.com/web3-services"
  s.license      = { :type => "Apache License, Version 2.0" }
  s.author       = 'CIRCLE'
  s.swift_version = '5.7.1'
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/circlefin/w3s-ios-sdk.git",
                     :tag => "master-1.0.3" }

  # Published binary
  s.ios.vendored_frameworks = 'master/CircleProgrammableWalletSDK.xcframework'
  s.resources = 'master/Resources/*'

  # Dependency
  s.dependency 'Alamofire', '5.5.0'
  s.dependency 'SDWebImage', '5.9.1'
  s.dependency 'IQKeyboardManagerSwift', '6.5.11'

end
