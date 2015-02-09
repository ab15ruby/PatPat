#!/usr/bin/env ruby

class Table
  attr_accessor :size

  def initialize size

    @table =  Array.new(size) {Array.new(size) { 0 } }
    @size = size

  end


  def bosmu?(x,y)
    if x < @size and x > 0 and y > 0 and y < @size
      @table[x][y].zero?
    else
      return false
    end
  end

  def atama(x,y, offset)
    if x < @size and x > 0 and y > 0 and y < @size
      @table[x][y] = offset.to_i
    end
  end

  def display
    @table.each do |satir|
      satir.each do |item|
        if item.zero?
        print "\e[0;30m0 "
        elsif item.equal? 1
          print "\e[0;34m1 \e[0m"
        elsif item.equal? 2 
          print "\e[0;32m2\e[0m "
        elsif item.equal? 3
          print "\e[0;35m3\e[0m "
        end
      end
      print "\n"
    end
  end

  def value(x,y)
    @table[x][y]
  end

end