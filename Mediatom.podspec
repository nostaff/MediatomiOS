Pod::Spec.new do |spec|
  spec.name         = "MediatomiOS"
  spec.version      = "2.7.2"
  spec.summary      = "A short description of Mediatom SDK for iOS."
  spec.description  = <<-DESC
            Mediatom SDK for developer
                   DESC
  spec.homepage     = "https://github.com/xiaofu666/MediatomiOS"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "小富" => "3290235031@qq.com" }
  spec.source       = { :git => "https://github.com/xiaofu666/MediatomiOS.git", :tag => s.version.to_s }
  spec.ios.deployment_target = '11.0'
  spec.static_framework = true
  spec.requires_arc = true
  spec.frameworks   = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck'
  spec.libraries    = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
  spec.pod_target_xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
  spec.pod_target_xcconfig =   { 'VALID_ARCHS'   => 'x86_64 armv7 armv7s arm64' }
  spec.resource = 'MediatomiOS/LICENSE'
  spec.default_subspecs = 'MSaas'


  spec.subspec 'MSaas' do |ss|
    ss.vendored_frameworks = 'MediatomiOS/MSaas.xcframework'
  end
  
    spec.subspec 'SFAdCsjAdapter' do |ss|
    ss.dependency 'Ads-CN'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdCsjAdapter.xcframework'
  end
  
    spec.subspec 'SFAdGdtAdapter' do |ss|
    ss.dependency 'GDTMobSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdGdtAdapter.framework'
  end
  
    spec.subspec 'SFAdKsAdapter' do |ss|
    ss.dependency 'KSAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdKsAdapter.framework'
  end
  
    spec.subspec 'SFAdJztAdapter' do |ss|
    ss.dependency 'JADYun'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdJztAdapter.framework'
  end
  
    spec.subspec 'SFAdBaiduAdapter' do |ss|
    ss.dependency 'BaiduMobAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBaiduAdapter.framework'
  end

end
