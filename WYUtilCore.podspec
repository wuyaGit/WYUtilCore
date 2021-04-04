#
#  Be sure to run `pod spec lint WYUtilCore.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "WYUtilCore"
  spec.version      = "0.0.1"
  spec.summary      = "基础公用工具库"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
TODO: 基础公用工具库，单独模块。
                   DESC

  spec.homepage     = "https://github.com/wuyaGit/WYUtilCore"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  
  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author		= { "wuyagit" => "407671883@qq.com" }
  spec.source		= { :git => 'https://github.com/wuyaGit/WYUtilCore.git', :tag => spec.version.to_s }

  # spec.social_media_url   = "https://twitter.com/macbook pro"

  spec.ios.deployment_target = "10.0"

  spec.source_files  = "WYUtilCore/Classes/**/*.{h,swift}"

  spec.resource_bundles = {
      'WYUtilCore' => ['WYUtilCore/Assets/**/*.{xcassets,storyboard}']
  }


  spec.frameworks = "UIKit"

  #spec.dependency 'ModelProtocol', '~> 0.0.1'
  #spec.dependency 'EmptyDataView', '~> 0.0.1'

  spec.dependency 'Kingfisher'
  spec.dependency 'SnapKit'

  #spec.dependency 'RxSwift'
  #spec.dependency 'RxCocoa'

  spec.dependency 'CryptoSwift'
  #spec.dependency 'SwiftyUserDefaults'
  
  spec.dependency 'NVActivityIndicatorView'	#动画显示
  spec.dependency 'Toast-Swift'
  #spec.dependency 'MJRefresh'
  #spec.dependency 'MBProgressHUD'
  #spec.dependency 'URLNavigator'
  #spec.dependency 'WebViewJavascriptBridge'

end
