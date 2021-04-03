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
  
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  spec.author		= { "wuyagit" => "407671883@qq.com" }
  s.source		= { :git => 'https://github.com/wuyaGit/WYUtilCore.git', :tag => s.version.to_s }

  # spec.social_media_url   = "https://twitter.com/macbook pro"

  spec.ios.deployment_target = "10.0"

  spec.source_files  = "WYUtilCore/**/*.{h,m}"

  #s.resource_bundles = {
  #    'WYUtilCore' => ['WYUtilCore/**/*.{xcassets,storyboard}']
  #}


  spec.frameworks = "UIKit"

  s.dependency 'ModelProtocol', '~> 0.0.1'
  s.dependency 'EmptyDataView', '~> 0.0.1'
  s.dependency 'RxSwift', '~> 4.1.2'  #依赖关系，该项目所依赖的其他库，如果有多个需要填写多个s.dependency
  s.dependency 'RxCocoa', '~> 4.1.2'
  s.dependency 'CryptoSwift', '~> 0.8.3'
  s.dependency 'SwiftyUserDefaults', '~> 3.0.1'
  #动画显示
  s.dependency 'NVActivityIndicatorView', '~> 4.3.0'
  #autolayout的封装
  s.dependency 'SnapKit', '~> 4.0.0'
  #toast提示框
  s.dependency 'Toast-Swift', '~> 3.0.1'
  s.dependency 'MJRefresh', '~> 3.1.15.3'
  s.dependency 'Kingfisher', '~> 4.6.4'
  s.dependency 'MBProgressHUD', '~> 1.1.0'
  s.dependency 'URLNavigator', '~> 2.0.4'
  s.dependency 'WebViewJavascriptBridge', '~> 6.0.3'

end
