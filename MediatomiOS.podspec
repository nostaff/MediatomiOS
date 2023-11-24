Pod::Spec.new do |s|
  s.name         = "MediatomiOS"
  s.version      = "2.7.4"
  s.summary      = "Mobile App Aggregation Ad SDK of Mediatom SDK for iOS."
  s.description  = <<-DESC
            Mediatom SDK is an advertising aggregation SDK that allows you to monetize iOS applications through Mediatom advertising.
                   DESC
  s.homepage     = "https://www.mediatom.cn/dockingdocs/detail?id=70"
  s.license      = { :type => "MIT" }
  s.author       = 'Lurich'
  
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '11.0'
  s.static_framework = true
  s.requires_arc = true
  s.swift_versions = '4.0'
  
  s.frameworks   = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck'
  s.libraries    = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
  s.xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
  s.pod_target_xcconfig =   { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i' }
  
  s.source = { :http => "https://github.com/xiaofu666/MediatomiOS/releases/download/#{s.version}/MediatomiOS.zip" }
    
  s.default_subspecs = 'MSaas'

  s.subspec 'MSaas' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.vendored_frameworks = 'MediatomiOS/MSaas.xcframework'
  end
  
  s.subspec 'SFAdCsjAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'Ads-Fusion-CN-Beta'
    ss.dependency 'Ads-Fusion-CN-Beta/CSJMediation'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdCsjAdapter.xcframework'
  end
  
  s.subspec 'SFAdGdtAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'GDTMobSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdGdtAdapter.xcframework'
  end
  
  s.subspec 'SFAdKsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'KSAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdKsAdapter.xcframework'
  end
  
  s.subspec 'SFAdJztAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'JADYun'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdJztAdapter.xcframework'
  end
  
  s.subspec 'SFAdBaiduAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BaiduMobAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBaiduAdapter.xcframework'
  end
  
  s.subspec 'SFAdBeiziAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'SFBeiZiSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBeiziAdapter.xcframework'
  end
  
  s.subspec 'SFAdTbAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'SFTanxSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTbAdapter.xcframework'
  end
  
  s.subspec 'SFAdMsAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MSMobAdSDK/MS'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMsAdapter.xcframework'
  end
  
  s.subspec 'SFAdSigmobAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'SigmobAd-iOS'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdSigmobAdapter.xcframework'
  end
  
  s.subspec 'SFAdMtgAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MintegralAdSDK/All'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMtgAdapter.xcframework'
  end
  
  s.subspec 'SFAdPangleAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'Ads-Global'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdPangleAdapter.xcframework'
  end
  
  s.subspec 'SFAdMobAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'Google-Mobile-Ads-SDK'
    # ss.dependency 'PersonalizedAdConsent'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMobAdapter.xcframework'
  end
  
  s.subspec 'SFAdMetaAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'FBAudienceNetwork'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMetaAdapter.xcframework'
  end
  
  s.subspec 'SFAdUnityAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'UnityAds'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdUnityAdapter.xcframework'
  end
  
  s.subspec 'SFAdVungleAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'VungleAds'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdVungleAdapter.xcframework'
  end
  
  s.subspec 'SFAdTopOnAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'AnyThinkiOS/AnyThinkSDK'
    ss.dependency 'AnyThinkiOS/AnyThinkPangleAdapter'
    ss.dependency 'AnyThinkiOS/AnyThinkAdmobAdapter'
    ss.dependency 'AnyThinkiOS/AnyThinkFacebookAdapter'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTopOnAdapter.xcframework'
  end
  
  s.subspec 'SFAdApplovinAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'AppLovinSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdApplovinAdapter.xcframework'
  end
  
  s.subspec 'SFAdInmobiAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'InMobiSDK/Core'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdInmobiAdapter.xcframework'
  end
  
  s.subspec 'SFAdIronsourceAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'IronSourceSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdIronsourceAdapter.xcframework'
  end

end
