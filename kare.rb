#!/usr/bin/env ruby

class Kare
attr_accessor :kenar, :x, :y
def initialize
  @kenar = 1
end


def kaydet(table)
  if table.is_a? Table
    loop do
      @x , @y = rand(table.size), rand(table.size)
      if table.bosmu?(x,y)
        table.atama(x,y,1)
        break
      else
        redo
      end
    end
  end
end

end