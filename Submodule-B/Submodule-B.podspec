require 'pathname'

source_repo = Pathname.new(__dir__).parent.realpath

Pod::Spec.new do |spec|
  spec.name                       = 'Submodule-B'
  spec.version                    = '0.0.1'
  spec.authors                    = { 'Kudo Chien' => 'kudo@expo.dev' }
  spec.homepage                   = 'https://github.com/Kudo/CocoaPodsSubmodule'
  spec.summary                    = 'podspec with submodules'
  spec.license                    = { :type => 'MIT' }
  spec.source                     = { :git => "file://#{source_repo}" }

  # Submodule-B has a `header_dir` different to spec name
  spec.header_dir                 = 'SubmoduleB'

  spec.pod_target_xcconfig        = {
    'DEFINES_MODULE' => 'YES',
  }

  spec.source_files               = 'Submodule-B/**/*.{h,m,mm,swift}'
end
