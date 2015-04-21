Pod::Spec.new do |s|

  s.name         = "DLSlideView"
  s.version      = "0.8.1"
  s.summary      = "Tabed slide view based on container of ViewController(not UIScrollView). support infinit pages."

  s.description  = <<-DESC
DLSlideView对常见的顶部Tab页点击、滑动分页做了封装。 它使用基于ViewController的container特性（而不是scrollview）来管理各个子页面，保留原始的系统消息，没有隐患。 同时内存模型更优于使用scrollview的方式，理论上可以支持无限分页。
                   DESC

  s.homepage     = "https://github.com/agdsdl/DLSlideView"
  s.screenshots  = "https://github.com/agdsdl/DLSlideView/raw/master/Images/demo1.jpg", "https://github.com/agdsdl/DLSlideView/raw/master/Images/demo2.jpg"


  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "Dongle Su" => "agdsdl@sina.com.cn" }
  s.social_media_url   = "http://weibo.com/u/1421886475"

  s.platform     = :ios, "5.0"
  s.ios.deployment_target = "5.0"

  s.source       = { :git => "https://github.com/agdsdl/DLSlideView.git", :tag => s.version.to_s }
  s.source_files  = "DLSlideView/**/*.{m,h}"

  s.requires_arc = true

end
