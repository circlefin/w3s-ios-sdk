Pod::Spec.new do |s|
  s.name = 'CircleProgrammableWalletSDK'
  s.version = '1.0.4'
  s.license = 'Apache License, Version 2.0'
  s.summary = 'CircleProgrammableWalletSDK for iOS.'
  s.homepage = 'https://www.circle.com/web3-services'
  s.author = 'CIRCLE'
  s.source = { :git => "https://github.com/circlefin/w3s-ios-sdk",
               :tag => s.version }

  s.platform = :ios, '13.0'
  s.swift_versions = ['5']

  s.ios.vendored_frameworks = 'Source/*.xcframework'
  s.resources = 'Resources/*'

  # Dependency
  s.dependency 'Alamofire', '5.5.0'
  s.dependency 'SDWebImage', '5.9.1'
  s.dependency 'IQKeyboardManagerSwift', '6.5.11'

end
