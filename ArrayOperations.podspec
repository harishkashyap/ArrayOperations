#
# Be sure to run `pod spec lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "ArrayOperations"
  s.version          = "0.1.0"
  s.summary          = "Additions to NSMutableArray and NSArray Methods"
  s.homepage         = "http://www.thevoyagenius.com"
  s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Harish Kashyap" => "harish.k.kashyap@gmail.com" }
  s.source           = { :git => "http://github.com/voyagenius/ArrayOperations.git", :tag => "0.1.0" }
  s.social_media_url = 'https://twitter.com/voyagenius'

  # s.platform     = :ios, '7.0'
  # s.ios.deployment_target = '6.0'
  s.requires_arc = true

  s.source_files = 'Classes'
  s.resources = 'Resources'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  s.public_header_files = 'ArrayOperations/ArrayOperations.h'
end
