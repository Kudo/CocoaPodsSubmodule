require 'pathname'

source_repo = Pathname.new(__dir__).parent.realpath

Pod::Spec.new do |spec|
  spec.name                       = 'SubmoduleA'
  spec.version                    = '0.0.1'
  spec.authors                    = { 'Kudo Chien' => 'kudo@expo.dev' }
  spec.homepage                   = 'https://github.com/Kudo/CocoaPodsSubmodule'
  spec.summary                    = 'podspec with submodules'
  spec.license                    = { :type => 'MIT' }
  spec.source                     = { :git => "file://#{source_repo}" }

  spec.pod_target_xcconfig        = {
    'DEFINES_MODULE' => 'YES',
  }

  spec.source_files               = 'SubmoduleA/**/*.{h,m,mm,swift}'
end
