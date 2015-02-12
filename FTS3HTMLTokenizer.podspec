Pod::Spec.new do |s|
  s.name         = 'FTS3HTMLTokenizer'
  s.version      = '1.0.2'
  s.summary      = 'FTS3 HTML Tokenizer'
  s.license      = 'MIT'
  s.author       = 'Stephan Heilner'
  s.homepage     = 'https://github.com/stephanheilner/FTS3HTMLTokenizer'
  s.source       = { :git => "https://github.com/stephanheilner/FTS3HTMLTokenizer.git", :tag => s.version.to_s }
  s.source_files = '*/*.{h,c}'
  s.requires_arc = false
  s.dependency 'sqlite3/fts'
  s.dependency 'snowball'
end
