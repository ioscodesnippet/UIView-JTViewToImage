Pod::Spec.new do |s|
  s.name         = "UIView-JTViewToImage"
  s.version      = "0.0.1"
  s.summary      = "Rendering any UIViews into UIImage in one line"
  s.homepage     = "https://gist.github.com/jamztang/1578446"
  s.author       = { "Jamz Tang" => "jamz@jamztang.com" }
  s.platform     = :ios
  s.source       = { :git => "git://gist.github.com/1578446.git", :tag => '0.0.1' }
  s.source_files  = '*.{h,m}'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
end
