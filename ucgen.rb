#!/usr/bin/env ruby
require_relative 'table'
class Ucgen

attr_accessor :x, :y
  def initialize

  end

  def kaydet(table)
    if table.is_a? Table
      loop do
         @x , @y = rand(table.size), rand(table.size)

         if table.bosmu?(x, y)
           if table.bosmu?(x+1,y) and table.bosmu?(x-1,y) and table.bosmu?(x,y+1)
              table.atama(x,y)
              table.atama(x+1,y)
              table.atama(x-1,y)
              table.atama(x,y+1)
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