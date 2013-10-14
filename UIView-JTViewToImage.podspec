Pod::Spec.new do |s|
  s.name         = "UIView-JTViewToImage"
  s.version      = "0.0.2"
  s.summary      = "Rendering any UIViews into UIImage in one line"
  s.homepage     = "https://gist.github.com/jamztang/1578446"
  s.author       = { "Jamz Tang" => "jamz@jamztang.com" }
  s.platform     = :ios
  s.source       = { :git => "git://gist.github.com/1578446.git", :tag => s.version.to_s }
  s.source_files  = '*.{h,m}'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
end
