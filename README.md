# const\_set

[![Build Status](https://img.shields.io/travis/bfontaine/const_set.svg)](https://travis-ci.org/bfontaine/const_set)
[![Gem Version](https://img.shields.io/gem/v/const_set.png)](http://badge.fury.io/rb/const_set)
[![Coverage Status](https://img.shields.io/coveralls/bfontaine/const_set.svg)](https://coveralls.io/r/bfontaine/const_set)
[![Dependency Status](https://img.shields.io/gemnasium/bfontaine/const_set.svg)](https://gemnasium.com/bfontaine/const_set)

**const_set** is a (dangerous) gem that let you modify a constant’s value
without any warning. It’s useful for testing purposes, for example when your
code rely on a constant like `ARGV` or `RUBY_PLATEFORM`.

## Install

```
gem install const_set
```

## Usage

```rb
require 'const_set'

const_set('ARGV', %w[--foo bar])
const_set('RUBY_PLATFORM', 'Foobar')
```

## Tests

```
$ git clone https://github.com/bfontaine/const_set.git
$ cd const_set
$ bundle install
$ bundle exec rake test
```
