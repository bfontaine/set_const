# set\_const

[![Build Status](https://img.shields.io/travis/bfontaine/set_const.svg)](https://travis-ci.org/bfontaine/set_const)
[![Gem Version](https://img.shields.io/gem/v/set_const.png)](http://badge.fury.io/rb/set_const)
[![Coverage Status](https://coveralls.io/repos/bfontaine/set_const/badge.png)](https://coveralls.io/r/bfontaine/set_const)
[![Inline docs](http://inch-pages.github.io/github/bfontaine/set_const.png)](http://inch-pages.github.io/github/bfontaine/set_const)
[![Dependency Status](https://img.shields.io/gemnasium/bfontaine/set_const.svg)](https://gemnasium.com/bfontaine/set_const)

**set\_const** is a (dangerous) gem that let you modify a constant’s value
without any warning. It’s useful for testing purposes, for example when your
code rely on a constant like `ARGV` or `RUBY_PLATFORM`.

## Install

```
gem install set_const
```

## Usage

```rb
require 'set_const'

set_const('ARGV', %w[--foo bar])
set_const('RUBY_PLATFORM', 'Foobar')
```

## Tests

```
$ git clone https://github.com/bfontaine/set_const.git
$ cd set_const
$ bundle install
$ bundle exec rake test
```
