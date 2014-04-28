# -*- coding: UTF-8 -*-

require 'silent'

# Silently change a constant's value
# @param name [String] the constant's name
# @param value the contant's new value
# @param opts [Hash] options. Only one key is supported for now, +:parent+. It
#                    must be used when the constant is not global but under a
#                    class or module.
# @return the given value
#
# @example change +ARGV+’s value
#   set_const('ARGV', ['foo', '--bar', '42'])
# @example modify +MyModule.FOO+
#   set_const('FOO', 'something', parent: MyModule)
def set_const(name, value, opts={})
  parent = opts[:parent] || Object

  silent(:stderr) do
    parent.send(:const_set, name, value)
  end

  value
end
