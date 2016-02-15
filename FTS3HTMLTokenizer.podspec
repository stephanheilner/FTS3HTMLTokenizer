Pod::Spec.new do |s|
  s.name         = 'FTS3HTMLTokenizer'
  s.version      = '1.1.1'
  s.summary      = 'FTS3 HTML Tokenizer'
  s.license      = 'MIT'
  s.author       = 'Stephan Heilner'
  s.homepage     = 'https://github.com/stephanheilner/FTS3HTMLTokenizer'
  s.source       = { :git => "https://github.com/stephanheilner/FTS3HTMLTokenizer.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  
  s.libraries    = 'sqlite3'
  s.source_files = 'src/*.{h,c}', 'src/fts/*.{h,c}'
  s.public_header_files = 'src/fts/fts3_html_tokenizer.h'
  s.private_header_files = 'src/fts/*.h'
  
  s.dependency 'snowball'
end
