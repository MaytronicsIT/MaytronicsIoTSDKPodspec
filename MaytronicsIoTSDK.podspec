#
#  Be sure to run `pod spec lint MaytronicsIoTSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "MaytronicsIoTSDK"
  spec.version      = "0.32"
  spec.summary      = "Maytronics iOS SDK."
  spec.description  = "Maytronics Iot SDK for iOS hold all the capabilities in order to controll maytronics Robots"

  spec.homepage     = "http://Maytronics.com"

  spec.license      = { :type => "MIT", :file => "license" }

  spec.author             = { "Harel Avikasis" => "Harel.Avikasis@Maytronics.com" }

  spec.ios.deployment_target = '10.0'
  spec.ios.vendored_frameworks = 'MaytronicsIoTSDK.framework'

  spec.source       = { :http => 'https://firebasestorage.googleapis.com/v0/b/nutsrace.appspot.com/o/MaytronicsIoTSDK_0.32.1.zip?alt=media&token=c4b1d229-206f-4b03-ac7c-9d1461634663' }

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.exclude_files = "Classes/Exclude"
  spec.dependency 'AWSIoT'
  spec.dependency 'ReachabilitySwift'
  spec.dependency 'AWSDynamoDB'
  # spec.swift_version = '5.0'
  spec.swift_version = '4.0'
  # spec.dependency 'AWSS3'

end
