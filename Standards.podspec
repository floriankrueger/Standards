Pod::Spec.new do |s|
  s.name         = "Standards"
  s.version      = "0.1.1"
  s.summary      = "Backport of Foundations’ Measurements API"
  s.description  = <<-DESC
    Enables developers to use Foundations’ Measurements API all the way down to iOS 8.0.
  DESC
  s.homepage     = "https://github.com/floriankrueger/Standards"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Florian Krüger" => "florian.krueger@projectserver.org" }
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/floriankrueger/Standards.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end
