# -*- coding: UTF-8 -*-

require 'silent'

def set_const(name, value, **opts)
  parent = opts[:parent] || Object

  silent(:stderr) do
    parent.send(:const_set, name, value)
  end

  value
end
