Pod::Spec.new do |s|
  s.name         = 'FTS3HTMLTokenizer'
  s.version      = '2.2.0'
  s.summary      = 'FTS3 HTML Tokenizer'
  s.license      = 'MIT'
  s.author       = 'Stephan Heilner'
  s.homepage     = 'https://github.com/stephanheilner/FTS3HTMLTokenizer'
  s.source       = { :git => "https://github.com/stephanheilner/FTS3HTMLTokenizer.git", :tag => s.version.to_s }
  s.requires_arc = false

  s.prepare_command = "curl http://snowball.tartarus.org/dist/libstemmer_c.tgz | tar xvz"

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'src/*.{h,c}', 'src/fts/*.{h,c}', 'libstemmer_c/libstemmer/libstemmer.c', 'libstemmer_c/libstemmer/modules.h', 'libstemmer_c/include/*.h', 'libstemmer_c/src_c/*.{h,c}', 'libstemmer_c/runtime/*.{h,c}'
  s.preserve_paths = "libstemmer_c/libstemmer/*", "libstemmer_c/src_c/*"
    
  s.public_header_files = 'src/fts3_html_tokenizer.h'
  s.private_header_files = 'src/fts/*.h'
  
  s.libraries    = 'sqlite3'
end
