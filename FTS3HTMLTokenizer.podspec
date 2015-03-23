Pod::Spec.new do |s|
  s.name         = 'FTS3HTMLTokenizer'
  s.version      = '1.0.5'
  s.summary      = 'FTS3 HTML Tokenizer'
  s.license      = 'MIT'
  s.author       = 'Stephan Heilner'
  s.homepage     = 'https://github.com/stephanheilner/FTS3HTMLTokenizer'
  s.source       = { :git => "https://github.com/stephanheilner/FTS3HTMLTokenizer.git", :tag => s.version.to_s }
  s.source_files = 'src/*.{h,c}'
  s.requires_arc = true
  s.dependency 'sqlite3/fts'
  s.dependency 'snowball'
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.default_subspecs = 'fts3'
  
  s.subspec 'fts3' do |ss|
    ss.source_files = 'src/fts/*.{h,c}'
  end
  
end
