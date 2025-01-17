Pod::Spec.new do |s|
  # Version
  s.version       = "1.4.0"
  s.swift_version = '5.9'

  # Meta
  s.name         = "AVPlayerItemCaching"
  s.summary      = "Video caching for AVPlayer"
  s.homepage     = "https://github.com/dandreiolteanu/VideoCache"
  s.license      = "MIT"
  s.authors      = { "Andrei Olteanu" => "hello@andreiolteanu.com" }
  s.description  = <<-DESC
                    Easily cache your AVPlayer video and audio.
                   DESC

  # Compatibility & Sources
  s.platform     = :ios, "14.0"
  s.source       = { :git => "https://github.com/dandreiolteanu/VideoCache.git", :tag => s.version.to_s }
  s.source_files = 'Sources/**/*.{h,m,swift}'
  s.requires_arc = true

end
