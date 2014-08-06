# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinarey_cache/version'

Gem::Specification.new do |spec|
  spec.name          = "chinese_truncate"
  spec.version       = "1.0.0"
  spec.authors       = ["Jeffrey"]
  spec.email         = ["jeffrey6052@163.com"]
  spec.description   = "helper method for truncate chinese string. 1 chinese word = 2 byte."
  spec.summary       = ""
  spec.homepage      = "https://github.com/jeffrey6052/chinese_truncate"
  spec.license       = "MIT"

  spec.files         = ['lib/chinese_truncate.rb',
                        'test/chinese_truncate.rb',
                        'chinese_truncate.gemspec',
                        'README.md']
end
