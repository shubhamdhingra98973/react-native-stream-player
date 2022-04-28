require 'json'
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|

  s.name           = "RNSoundPlayer"
  s.version        = package['version']
  s.summary        = package["description"]
  s.homepage       = "https://github.com/amenulhaq/react-native-stream-player"
  s.license        = package["license"]
  s.author         = { "Amenulhaq" => "amenulhaq@gmail.com" }
  s.platforms      = { :ios => "9.0", :tvos => "9.0" }
  s.source         = { :git => "https://github.com/amenulhaq/react-native-stream-player.git", :tag => s.version }
  s.source_files   = 'ios/**/*.{h,m}'
  s.preserve_paths = "package.json", "LICENSE"
  s.dependency 'React'

end
