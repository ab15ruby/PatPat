#!/usr/bin/env ruby

class Table
  attr_accessor :size

  def initialize size

    @table =  Array.new(size) {Array.new(size) { 0 } }
    @size = size

  end


  def bosmu?(x,y)
      @table[x][y].zero?
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