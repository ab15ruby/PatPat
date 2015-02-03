#!/usr/bin/env ruby
require_relative 'table'

class Dikdortgen
  attr_accessor :en, :boy, :x, :y
  def initialize
      @en = 2
      @boy = 1
  end

  def kaydet(table)
    if table.is_a? Table
      loop do
        @x , @y = rand(table.size), rand(table.size)

        if table.bosmu?(x,y)
            if table.bosmu?(x+1, y)
                table.atama(x,y)
                table.atama(x+1,y)
              break
            elsif table.bosmu?(x-1, y)
              table.atama(x,y)
              table.atama(x-1,y)
              break
            else
              redo
            end
        end

      end
    end
  end

end