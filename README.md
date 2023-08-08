# Mediatom
在SDK版本在2.7.2以上版本，支持cocoapod方式引入海外 SDK。<br>
在podfile文件中添加:<br>

	#核心库,必须添加
	pod 'MediatomiOS/MSaas'
	#各平台的Adapter
	#pod 'MediatomiOS/SFAd(平台名)Adapter'
	#按照您需要支持的平台，按需引入即可
	#例如 穿山甲 引入
	pod 'MediatomiOS/SFAdCsjAdapter'

下面是所有Adapter的pod列表

|network|podCode|
|---|---|
|Mediatom| pod 'MSaas' |
|穿山甲| pod 'MediatomiOS/SFAdCsjAdapter' |
|优量汇| pod 'MediatomiOS/SFAdGdtAdapter' |
|快手联盟| pod 'MediatomiOS/SFAdKsAdapter' |
|百青藤| pod 'MediatomiOS/SFAdBaiduAdapter' |
|京准通| pod 'MediatomiOS/SFAdJztAdapter' |
|GroMore| pod 'MediatomiOS/SFAdGromoreAdapter' |
|Beizi| pod 'MediatomiOS/SFAdBeiziAdapter' |
|Meishu| pod 'MediatomiOS/SFAdMsAdapter' |
|Sigmob| pod 'MediatomiOS/SFAdSigmobAdapter' |
|Mintegral| pod 'MediatomiOS/SFAdMtgAdapter' |
|Pangle| pod 'MediatomiOS/SFAdPangleAdapter' |
|AdMob| pod 'MediatomiOS/SFAdMobAdapter' |
|Meta| pod 'MediatomiOS/SFAdMetaAdapter' |
|Vungle| pod 'MediatomiOS/SFAdVungleAdapter' |
|Tanx| pod 'MediatomiOS/SFAdTbAdapter' |
|UnityAds| pod 'MediatomiOS/SFAdUnityAdapter' |
|TopOn| pod 'MediatomiOS/SFAdTopOnAdapter' |



