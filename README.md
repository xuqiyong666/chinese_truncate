# chinese_truncate

helper method for truncate chinese string. 1 chinese word = 2 byte.

## Install

```sh
$ gem install chinese_truncate
```

## Usage

``` ruby

require 'chinese_truncate'

str = "中文 a和d english"

puts str.chinese_size                         # => 9

puts str.chinese_bytesize                     # => 17

puts str.is_chinese_shorter(8)                # => false

puts str.is_chinese_longer(8)                 # => 13 (not true)

puts str.chinese_truncate(8)                  # => 中文 a和d eng...

puts str.chinese_truncate(8, omission:'???')  # => 中文 a和d eng???

puts str.chinese_truncate(8, omission:false)  # => 中文 a和d englis

puts str.chinese_truncate(9)                  # => 中文 a和d english

puts str.chinese_truncate(10)                 # => 中文 a和d english

```