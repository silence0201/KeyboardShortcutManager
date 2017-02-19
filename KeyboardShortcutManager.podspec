Pod::Spec.new do |s|
  s.name         = "KeyboardShortcutManager"
  s.version      = "1.0"
  s.summary      = "KeyboardShortcutManager."
  s.description  = <<-DESC
                      KeyboardShortcutManager for SIMULATOR
                   DESC
  s.homepage     = "https://github.com/silence0201/KeyboardShortcutManager"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Silence" => "374619540@qq.com" }
  s.social_media_url   = "https://twitter.com/Silencee0201"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/silence0201/KeyboardShortcutManager.git", :tag => "1.0" }
  s.source_files  = "KeyboardShortcutManager", "KeyboardShortcutManager/**/*.{h,m}"
  s.exclude_files = "KeyboardShortcutManager/Exclude"
  s.requires_arc = true
end
