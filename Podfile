# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'ReachableObserver' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # pod 'AFNetworking', '~> 4.0'

  # Pods for ReachableObserver

end

post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
  if config.name == 'Release'
          config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
      else
          config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
     end
    end
end
