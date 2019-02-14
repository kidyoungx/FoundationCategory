Pod::Spec.new do |spec|
  spec.name         = "FoundationCategory"
  spec.version      = "1.0.1"
  spec.summary      = "NextStep Foundation Category."

  spec.description  = <<-DESC
                        NextStep Foundation Category. Such as NSObject, NSString.
                   DESC

  spec.homepage     = "https://github.com/kidyoungx/FoundationCategory"

  spec.license      = "MPL-2.0"

  spec.author             = { "Kid Young" => "kidyoungx@gmail.com" }

  spec.ios.deployment_target = "5.0"
  spec.osx.deployment_target = "10.7"

  spec.source       = { :git => "https://github.com/kidyoungx/FoundationCategory.git", :tag => "#{spec.version}" }

  spec.source_files  = "FoundationCategory", "FoundationCategory/**/*.{h,m}"
  spec.exclude_files = "SampleFoundationCategory"

  spec.public_header_files = "FoundationCategory/**/*.h"

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

  spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
