Pod::Spec.new do |s|
  s.name         = 'FTS3HTMLTokenizer'
  s.version      = '3.2.0'
  s.summary      = 'FTS3 HTML Tokenizer'
  s.license      = 'MIT'
  s.author       = 'Stephan Heilner'
  s.homepage     = 'https://github.com/stephanheilner/FTS3HTMLTokenizer'
  s.source       = { :git => "https://github.com/stephanheilner/FTS3HTMLTokenizer.git", :tag => s.version.to_s }
  s.requires_arc = false
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'  
  s.source_files = 'Sources/FTS3HTMLTokenizer/*.{h,c}', 'Sources/FTS3HTMLTokenizer/fts/*.{h,c}', 'Sources/libstemmer_c/libstemmer/libstemmer.c', 'Sources/libstemmer_c/libstemmer/modules.h', 'Sources/libstemmer_c/include/*.h', 'Sources/libstemmer_c/src_c/*.{h,c}', 'Sources/libstemmer_c/runtime/*.{h,c}'
  s.preserve_paths = 'Sources/libstemmer_c/libstemmer/*', 'Sources/libstemmer_c/src_c/*'
  s.public_header_files = 'Sources/FTS3HTMLTokenizer/fts3_html_tokenizer.h'
  s.private_header_files = 'Sources/FTS3HTMLTokenizer/fts/*.h'
  s.libraries    = 'sqlite3'
  s.swift_version = '5.0'
end
