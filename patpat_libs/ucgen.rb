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

         if table.bosmu?(x,y)
           konum_x = rand(2)
           konum_y = rand(2)
           if konum_x.zero?
             if konum_y.zero?
               if table.bosmu?(x+1,y) and table.bosmu?(x-1,y) and table.bosmu?(x,y+1)
                 table.atama(x,y,3)
                 table.atama(x+1,y,3)
                 table.atama(x-1,y,3)
                 table.atama(x,y+1,3)
                 break
               else
                 redo
               end
             elsif konum_y.equal? 1
               if table.bosmu?(x+1,y) and table.bosmu?(x-1,y) and table.bosmu?(x,y-1)
                 table.atama(x,y,3)
                 table.atama(x+1,y,3)
                 table.atama(x-1,y,3)
                 table.atama(x,y-1,3)
                 break
               else
                 redo
               end
             end
           elsif konum_x.equal? 1
             if konum_y.zero?
               if table.bosmu?(x,y+1) and table.bosmu?(x,y-1) and table.bosmu?(x+1,y)
                 table.atama(x,y,3)
                 table.atama(x,y+1,3)
                 table.atama(x,y-1,3)
                 table.atama(x+1,y,3)
                 break
               else
                 redo
               end
             elsif konum_y.equal? 1
               if table.bosmu?(x+1,y) and table.bosmu?(x-1,y) and table.bosmu?(x,y-1)
                 table.atama(x,y,3)
                 table.atama(x+1,y,3)
                 table.atama(x-1,y,3)
                 table.atama(x,y-1,3)
                 break
               else
                 redo
               end
             end
           end

         else
           redo
         end

      end
    end
  end
end