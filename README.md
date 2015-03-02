# FTS3HTMLTokenizer

## License

FTS3HTMLTokenizer is available under the MIT license. See the LICENSE file for more info.

## Usage

```objective-c
#import "fts3_html_tokenizer.h"
```

Then, in your class when you've initialized your database connection, register the tokenizer. Keep in mind, you can name the tokenizer module whatever you want, just remember to use the same name when creating your virtual FTS table.

```objective-c
registerTokenizer(db, "FTS3HTMLTokenizer", "/stopwords_resource_path");

CREATE VIRTUAL TABLE my_fts_content USING fts4(content, tokenize=FTS3HTMLTokenizer en_US);
```
