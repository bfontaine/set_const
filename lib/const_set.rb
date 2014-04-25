# -*- coding: UTF-8 -*-

require 'silent'

def const_set(name, value, **opts)
  parent = opts[:parent] or Object

  silent(:stderr) do
    parent.send(:const_set, name, value)
  end

  value
end
