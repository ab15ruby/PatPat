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
        konum = rand(2)

        if table.bosmu?(x,y)
          if table.bosmu?(x+1, y) and konum.equal? 0
                table.atama(x,y,2)
                table.atama(x+1,y,2)
              break
            elsif table.bosmu?(x ,y+1) and konum.equal? 1
              table.atama(x,y,2)
              table.atama(x, y+1, 2)
              break
            else
              redo
          end
        else
          redo
        end

      end
    end
  end

end