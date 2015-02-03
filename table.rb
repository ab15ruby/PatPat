#!/usr/bin/env ruby

class Table
  attr_accessor :size

  def initialize size

    @table =  Array.new(size) {Array.new(size) { 0 } }
    @size = size

  end


  def bosmu?(x,y)
    if x < size and y < size
      @table[x][y].zero? and @table[y][x].zero?
    else
      return false
    end
  end

  def atama(x,y, offset)
    @table[x][y] = offset.to_i
    @table[y][x] = offset.to_i
  end

  def display
    @table.each do |satir|
      satir.each { |item| print "#{item} "  }
      print "\n"
    end
  end

  def value(x,y)
    @table[x][y]
  end

end