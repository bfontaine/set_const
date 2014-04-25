#! /usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'coveralls'
Coveralls.wear!

require 'test/unit'
require 'simplecov'

test_dir = File.expand_path( File.dirname(__FILE__) )

SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start { add_filter '/tests/' }

require 'const_set'

for t in Dir.glob( File.join( test_dir,  '*_tests.rb' ) )
  require t
end

class ConstSetTests < Test::Unit::TestCase
  def setup
    @_stderr, $stderr = $stderr, StringIO.new
  end

  def teardown
    $stderr = @_stderr
  end

  def test_simple_const_set_ARGV
      const_set('ARGV', 42)
      assert_equal(42, ARGV)
      $stderr.seek(0)
      assert_equal('', $stderr.read)
  end
end


exit Test::Unit::AutoRunner.run
