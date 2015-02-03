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

  def atama(x,y)
    @table[x][y] = 1
    @table[y][x] = 1
  end

  def display
    @table.each do |satir|
      satir.each { |item| print "#{item} "  }
      print "\n"
    end
  end

end