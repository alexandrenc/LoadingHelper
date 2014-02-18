Pod::Spec.new do |s|
  s.name         = "LoadingHelper"
  s.version      = "0.1.3"
  s.summary      = "A LoadingHelper."
  s.homepage     = "https://github.com/alexandrenc/LoadingHelper"
  s.license      = 'MIT'
  s.author       = { "Alexandre Nunes" => "alexandrenc@gmail.com" }
  s.source       = { :git => "https://github.com/alexandrenc/LoadingHelper.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.source_files = 'Classes/LoadingHelper.{h,m}'
  s.dependency 'DejalActivityView', '~> 1.1'
end
