Pod::Spec.new do |s|
  s.name         = "MediatomiOS"
  s.version      = "2.7.7.2"
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
  s.swift_versions = '5.0'
  
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
    ss.dependency 'Ads-Fusion-CN-Beta/BUAdSDK'
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
    ss.dependency 'BeiZiSDK-iOS/BeiZiSDK-iOS'
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
  
  s.subspec 'SFAdFlAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'FLAD/FLAdSaas'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdFlAdapter.xcframework'
  end
  
  s.subspec 'SFAdTmAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TianmuSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTmAdapter.xcframework'
  end
  
  s.subspec 'SFAdHrAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'HRAdSDK/HR'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdHrAdapter.xcframework'
  end
  
  s.subspec 'SFAdYtAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    # ss.dependency 'YouTuiAdSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdYtAdapter.xcframework'
  end
  
  s.subspec 'SFAdKdxfAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdKdxfAdapter.xcframework'
  end
  
  s.subspec 'SFAdZyAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'OctopusSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdZyAdapter.xcframework'
  end
  
  
  
  
  s.subspec 'SFAdMtgAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'MintegralAdSDK/All', '7.5.7'
    ss.dependency 'AppLovinMediationMintegralAdapter', '7.5.7.0.0'
    ss.dependency 'TradPlusAdSDK/MintegralAdapter', '11.2.0'
    ss.dependency 'AnyThinkiOS/AnyThinkMintegralAdapter', '6.3.20'
    ss.dependency 'GoogleMobileAdsMediationMintegral', '7.5.7.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMtgAdapter.xcframework'
  end
  
  s.subspec 'SFAdPangleAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'Ads-Global', '5.8.0.8'
    ss.dependency 'AppLovinMediationByteDanceAdapter', '5.8.0.8.1'
    ss.dependency 'TradPlusAdSDK/PangleAdapter', '11.2.0'
    ss.dependency 'AnyThinkPangleSDKAdapter', '6.3.20.1'
    ss.dependency 'GoogleMobileAdsMediationPangle', '5.8.0.8.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdPangleAdapter.xcframework'
  end
  
  s.subspec 'SFAdMetaAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'FBAudienceNetwork', '6.15.0'
    ss.dependency 'AppLovinMediationFacebookAdapter', '6.15.0.0'
    ss.dependency 'TradPlusAdSDK/FacebookAdapter', '11.2.0'
    ss.dependency 'AnyThinkiOS/AnyThinkFacebookAdapter', '6.3.20'
    ss.dependency 'GoogleMobileAdsMediationFacebook', '6.15.0.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMetaAdapter.xcframework'
  end
  
  s.subspec 'SFAdVungleAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'VungleAds', '7.2.2'
    ss.dependency 'AppLovinMediationVungleAdapter', '7.2.2.0'
    ss.dependency 'TradPlusAdSDK/VungleAdapter', '11.2.0'
    ss.dependency 'AnyThinkiOS/AnyThinkVungleAdapter', '6.3.20'
    ss.dependency 'GoogleMobileAdsMediationVungle', '7.2.2.1'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdVungleAdapter.xcframework'
  end
  
  s.subspec 'SFAdInmobiAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'InMobiSDK', '10.7.1'
    ss.dependency 'AppLovinMediationInMobiAdapter', '10.7.1.0'
    ss.dependency 'TradPlusAdSDK/InMobiAdapter', '11.2.0'
    ss.dependency 'AnyThinkiOS/AnyThinkInmobiAdapter', '6.3.20'
    ss.dependency 'GoogleMobileAdsMediationInMobi', '10.7.1.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdInmobiAdapter.xcframework'
  end
  
  s.subspec 'SFAdMobAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'Google-Mobile-Ads-SDK', '11.2.0'
    ss.dependency 'AppLovinMediationGoogleAdapter', '11.2.0.1'
    ss.dependency 'TradPlusAdSDK/AdMobAdapter', '11.2.0'
    ss.dependency 'AnyThinkiOS/AnyThinkAdmobAdapter', '6.3.20'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.dependency 'MediatomiOS/SFAdApplovinAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdMobAdapter.xcframework'
  end
  
  s.subspec 'SFAdApplovinAdapter' do |ss|
    ss.ios.deployment_target = '12.0'
    ss.dependency 'AppLovinSDK', '12.3.1'
    ss.dependency 'TradPlusAdSDK/AppLovinAdapter', '11.2.0'
    ss.dependency 'AnyThinkiOS/AnyThinkApplovinAdapter', '6.3.20'
    ss.dependency 'SFGAppLovinAdapter'
    ss.dependency 'MediatomiOS/MSaas'
    ss.dependency 'MediatomiOS/SFAdTnAdapter'
    ss.dependency 'MediatomiOS/SFAdTpAdapter'
    ss.vendored_frameworks = 'MediatomiOS/SFAdApplovinAdapter.xcframework'
  end
  
  s.subspec 'SFAdTnAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'AnyThinkiOS', '6.3.20'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTnAdapter.xcframework'
  end
  
  s.subspec 'SFAdTpAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'TradPlusAdSDK', '11.2.0'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdTpAdapter.xcframework'
  end
  
  
  
  
  s.subspec 'SFAdBigoAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'BigoADS'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdBigoAdapter.xcframework'
  end
  
  s.subspec 'SFAdUnityAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'UnityAds'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdUnityAdapter.xcframework'
  end
  
  s.subspec 'SFAdIronsourceAdapter' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.dependency 'IronSourceSDK'
    ss.dependency 'MediatomiOS/MSaas'
    ss.vendored_frameworks = 'MediatomiOS/SFAdIronsourceAdapter.xcframework'
  end

end
