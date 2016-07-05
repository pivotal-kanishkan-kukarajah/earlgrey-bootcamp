platform :ios, '8.0'

PROJECT_NAME = 'EarlGreyBootcamp'
TEST_TARGET = 'EarlGreyBootcampTests'
SCHEME_FILE = 'EarlGreyTest2.xcscheme'

target 'EarlGreyBootcamp' do 
pod 'AFNetworking'
pod 'Mantle'
pod 'KSDeferred'
end

target 'EarlGreyBootcampTests' do
pod 'EarlGrey'
end

post_install do |installer|
  load('configure_earlgrey_pods.rb')
  configure_for_earlgrey(installer, PROJECT_NAME, TEST_TARGET, SCHEME_FILE)
end

