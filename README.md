# MediatomiOS

 [![Docs-zh](https://shields.io/badge/Docs-中文-blue?logo=Read%20The%20Docs)](https://xiaofu666.github.io/static/html/iOS-SDK-对接文档.html)
 [![README-zh](https://shields.io/badge/README-中文-blue)](README.md)
 [![FAQ-zh](https://shields.io/badge/FAQ-中文-blue?logo=Read%20The%20Docs)](https://xiaofu666.github.io/static/html/iOS-SDK-对接文档.html?#faq)
 [![MediatomiOS](https://img.shields.io/badge/MediatomiOS-AD-red.svg)](https://github.com/xiaofu666/MediatomiOS.git)
 [![Build](https://img.shields.io/badge/build-passing-brightgreen)](https://github.com/xiaofu666/MediatomiOS.git)
 [![Language](https://img.shields.io/badge/Language-Objective--C-FF7F24.svg?style=flat)](https://github.com/xiaofu666/MediatomiOS.git)
 [![CocoaPods](https://img.shields.io/cocoapods/p/MediatomiOS.svg)](https://github.com/xiaofu666/MediatomiOS.git)
 [![CocoaPods](https://img.shields.io/cocoapods/v/MediatomiOS.svg)](https://github.com/xiaofu666/MediatomiOS.git)
 [![开源爱情](https://badges.frapsoft.com/os/mit/mit.svg?v=102)](https://github.com/xiaofu666/MediatomiOS.git)
 [![开源爱情](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://github.com/xiaofu666/MediatomiOS.git)
 [![微信](https://img.shields.io/badge/微信-Lurich-green.svg?style=flat)](https://u.wechat.com/EHPxTVDogoJySlhWs9vbKpc)
 [![邮箱](https://img.shields.io/badge/邮箱-3290235031@qq.com-green.svg?style=flat)](https://qm.qq.com/q/Nbo6sgqD0M)

![mediatom.gif](Logo/mediatom.gif)

## 使用CocoaPods安装


[CocoaPods](https://cocoapods.org) 是Xcode项目中的依赖管理器，它可以自动化并简化您在项目中使用第三方库的过程。您可以使用以下命令安装它：

```ruby
$ gem install cocoapods
```

### Podfile

MediatomiOS SDK 在 V2.7.2 以上版本，支持cocoapod方式引入海外 SDK。<br>

要使用的 CocoaPods MediatomiOS 集成到您的 Xcode 项目，需要您指定它的 **Podfile**:<br>

```ruby
# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

target 'testPod' do
    # Comment the next line if you don't want to use dynamic frameworks
    use_frameworks!
    
    #核心库,必须添加
    # Mediatom iOS 主包
    pod 'MediatomiOS'
    
    #各平台的Adapter
    #pod 'MediatomiOS/SFAd(平台名)Adapter'
    #按照您需要支持的平台，按需引入即可
    #例如 穿山甲 引入
    pod 'MediatomiOS/SFAdCsjAdapter'
  
end
```

下面是所有Adapter的pod列表

|network|podCode|
|---|---|
|Mediatom|    pod 'MediatomiOS' |
|穿山甲|       pod 'MediatomiOS/SFAdCsjAdapter' |
|优量汇|       pod 'MediatomiOS/SFAdGdtAdapter' |
|快手联盟|     pod 'MediatomiOS/SFAdKsAdapter' |
|百青藤|       pod 'MediatomiOS/SFAdBaiduAdapter' |
|京准通|       pod 'MediatomiOS/SFAdJztAdapter' |
|Beizi|       pod 'MediatomiOS/SFAdBeiziAdapter' |
|Meishu|      pod 'MediatomiOS/SFAdMsAdapter' |
|Sigmob|      pod 'MediatomiOS/SFAdSigmobAdapter' |
|Mintegral|   pod 'MediatomiOS/SFAdMtgAdapter' |
|Pangle|      pod 'MediatomiOS/SFAdPangleAdapter' |
|AdMob|       pod 'MediatomiOS/SFAdMobAdapter' |
|Meta|        pod 'MediatomiOS/SFAdMetaAdapter' |
|Vungle|      pod 'MediatomiOS/SFAdVungleAdapter' |
|Tanx|        pod 'MediatomiOS/SFAdTbAdapter' |
|UnityAds|    pod 'MediatomiOS/SFAdUnityAdapter' |
|TopOn|       pod 'MediatomiOS/SFAdTopOnAdapter' |
|AdApplovin|  pod 'MediatomiOS/SFAdApplovinAdapter' |


然后，运行以下命令：

```ruby
$ pod install
```

更新SDK至最新版本，运行以下命令：

```ruby
$ pod repo update
```

更多详情，请阅读[接入文档](https://xiaofu666.github.io/static/html/iOS-SDK-对接文档.html)

## 作者

Lurich

## License

MediatomiOS 可在MIT许可下使用。有关详细信息，请参阅LICENSE文件。

