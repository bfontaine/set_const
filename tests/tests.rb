#! /usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'coveralls'
Coveralls.wear!

require 'test/unit'
require 'simplecov'

test_dir = File.expand_path( File.dirname(__FILE__) )

SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start { add_filter '/tests/' }

require 'set_const'

class SetConstTests < Test::Unit::TestCase
  def setup
    @_stderr, $stderr = $stderr, StringIO.new
  end

  def teardown
    $stderr = @_stderr
  end

  def test_simple_set_const_ARGV
      set_const('ARGV', 42)
      assert_equal(42, ARGV)
      $stderr.seek(0)
      assert_equal('', $stderr.read)
  end
end


exit Test::Unit::AutoRunner.run
