Pod::Spec.new do |s|
  s.name             = 'CustomDump'
  s.version          = '1.0.0'
  s.summary          = 'A better way to dump values in Swift for debugging or testing'
  s.description      = <<-DESC
                       A collection of tools for debugging, diffing, and testing your application that
                       provides better console output for complex objects and a better way of diffing
                       values for testing.
                       DESC
  s.homepage         = 'https://github.com/lagary/swift-custom-dump'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Point-Free' => 'support@pointfree.co' }
  s.source           = { :git => 'https://github.com/lagary/swift-custom-dump.git', :tag => s.version.to_s }
  
  s.swift_version = '5.9'
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
  
  s.source_files = 'Sources/CustomDump/**/*'
  
  # Dependencies from specified repositories
  #s.dependency 'XCTestDynamicOverlay', '~> 1.2.2'
  
  # Note: IssueReporting is part of XCTestDynamicOverlay package
  # We're referencing both modules from the same package
  
  s.compiler_flags = '-enable-experimental-feature StrictConcurrency'
end
